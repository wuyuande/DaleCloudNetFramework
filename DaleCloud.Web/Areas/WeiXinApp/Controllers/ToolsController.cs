using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DaleCloud.Code;
namespace DaleCloud.Web.Areas.WeixinApp.Controllers
{
    public class ToolsController : ControllerBasev2
    {
       
        public ActionResult CaliErrorCalculator()
        {
            return View();
        }
        
        public ActionResult GetCaliError(string Type, string AtmP, string Vma,string Pma, string Tma, string Vsa, string Psa, string Tsa,string Humidity)
        {
            double caliTime = 0, fVsa = 0, fVma = 60, fTsa = 20, fPsa = 0, fTma = 20, fPma = 0, humidity = 50,fAtmP = 0;
            try
            {
                fVma = double.Parse(Vma);
                fVsa = double.Parse(Vsa);
                //humidity = double.Parse(Humidity);
                fTsa = double.Parse(Tsa);
                fPsa = double.Parse(Psa);
                fTma = double.Parse(Tma);
                fPma = double.Parse(Pma);
                fAtmP = double.Parse(AtmP);
                fAtmP = fAtmP * 1000;
            }
            catch (Exception ex)
            {
                return Error("计算出错："+ ex.Message);
            }
            if (Type=="GP" && fAtmP > 0)
            {
                fPsa = fAtmP - Math.Abs(fPsa);
                fPma = fAtmP - Math.Abs(fPma);
            }
            return GetError(fVsa, fVma, fPsa, fPma, fTsa, fTma);
        }

        /// <summary>
        /// 计算示值误差值
        /// </summary>
        /// <param name="Vs">Vs：标准装置的示值，dm³</param>
        /// <param name="Vm">Vm：燃气表的示值,dm³</param>
        /// <param name="psa"></param>
        /// <param name="pma"></param>
        /// <param name="tsa"></param>
        /// <param name="tma"></param>
        public ActionResult GetError(double Vs, double Vm, double psa, double pma, double tsa, double tma)
        {
            // 温度/压力修正公式：Vref = V_s * ( (Psa * Tma)/(Pma * Tsa ) )
            // 示值误差公式：E = (Vm -Vref)/Vref * 100%
            // 如果标准装置处温度 Tsa 和燃气表的气体温度 Tma 的差≤0.5℃，则E =  ( (Vm - Vs)/V_s - ((Psa - Pma) * Vm)/Psa * Vsa )* 100%
            // 如果标准装置处压力 Psa 和燃气表的进口端压力 Pma 的差 ≤0.2%，则E = (Vm -  Vs) /Vs *100%

            double Psa = psa;                       // Psa：标准装置处的绝对压力,Pa（绝对压力=环境大气压+标准器压力）
            double Pma = pma;                       // Pma：燃气表进口端的绝对压力,Pa （绝对压力=环境大气压+表前压力）    
            double Tsa = 273.15 + tsa;              // Tsa：标准器装置处的热力学温度，K（K=273.15+℃）
            double Tma = 273.15 + tma;              // Tma：燃气表进口端的热力学温度，K（K=273.15+℃）
            double Vref = Vs * (Psa * Tma) / (Pma * Tsa);                                                       // Vref：通过燃气表的气体实际值，dm³
            double Err = 100 * (Vm - Vref) / Vref;
            Dictionary<string, object> dic = new Dictionary<string, object>();
            dic.Add("Vref", Vref.ToString("f2"));
            dic.Add("Err", Err.ToString("f2"));
            return Success("成功", dic);
        }
    }
}