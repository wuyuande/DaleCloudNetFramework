using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.IO;
using Spire.Xls;
using Spire.Pdf;


namespace DaleCloud.Application.CommonService
{
    /// <summary>
    /// 将datatable或List<T>数据导出到Excel文件
    /// 需要引用Spire.Xls 动态库处理Excel数据 
    /// "Spire.Xls.dll；Spire.License.dll"
    /// </summary>
    public class ExcelExport
    {
        /// <summary>
        /// 将Excel文件数据导入到客户档案
        /// </summary>
        /// <param name="fullPath"></param>
        public static string Lunch_ExportExcel(DataTable data, string date)
        {
            try
            {
                Workbook workbook = new Workbook();
                string FileName;
                string fullPath;
                string filePath;
                FileName =  DateTime.Now.ToString("yyyyMMddhhmmss") + ".xls";
                filePath = "/uploads/excel/" + FileName;
                string path = AppDomain.CurrentDomain.BaseDirectory + "uploads\\excel\\";
                fullPath = Path.Combine(path, FileName);

                workbook.Worksheets[0].Name = "宜宾机电"+ date+"食堂餐费明细表";
                //设置表头
                workbook.Worksheets[0].Range[1, 1].Text = "序号";
                workbook.Worksheets[0].Range[1, 2].Text ="姓名";
                workbook.Worksheets[0].Range[1, 3].Text ="天数";
                workbook.Worksheets[0].Range[1, 5].Text = "标准";
                workbook.Worksheets[0].Range[1, 4].Text ="金额";
                workbook.Worksheets[0].Range[1, 6].Text = "备注";
                //写入数据
                for (int i = 0; i < data.Rows.Count; i++)
                {
                    workbook.Worksheets[0].Range[i + 2, 1].Text = (i+1).ToString();
                    workbook.Worksheets[0].Range[i + 2, 2].Text = data.Rows[i]["T_UserName"].ToString();
                    workbook.Worksheets[0].Range[i + 2, 3].Text = data.Rows[i]["T_Count"].ToString();
                    workbook.Worksheets[0].Range[i + 2, 4].Text = "";
                    workbook.Worksheets[0].Range[i + 2, 5].Text = "";
                    workbook.Worksheets[0].Range[i + 2, 6].Text = "";

                }
                //保存Excel
                workbook.SaveToFile(fullPath, ExcelVersion.Version97to2003);
                return filePath;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }
    }
}
