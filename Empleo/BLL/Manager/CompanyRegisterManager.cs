using System;
using DLL;
using DAL;
using BLL.Property;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;

namespace BLL.Manager
{
    public class CompanyRegisterManager
    {
        private DBhelper Db_Obj = new DBhelper();
        public CompanyRegisterProperty crp_Obj = new CompanyRegisterProperty();
        private SortedList sl1 = new SortedList();

        public string CompanyInsert()
        {
            sl1.Clear();

            sl1.Add("Company_Name", crp_Obj.Company_Name);
            sl1.Add("Company_Type", crp_Obj.Company_Type);
            sl1.Add("DateofEstalish", crp_Obj.DateofEstablish);
            sl1.Add("Company_Address", crp_Obj.Company_Address);
            sl1.Add("Company_City", crp_Obj.Company_City);
            sl1.Add("Company_Country", crp_Obj.Company_Country);
            sl1.Add("Company_ContactNo", crp_Obj.Company_ContactNo);
            sl1.Add("Company_Person", crp_Obj.Company_Person);
            sl1.Add("Company_Email", crp_Obj.Company_Email);
            sl1.Add("Username", crp_Obj.Username);
            sl1.Add("Password", crp_Obj.Password);

            return Db_Obj.executeprocedure(sl1, "CompanyInsert");
        }

        public List<CompanyRegisterProperty> selectallCompany()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectallCompany");
            List<CompanyRegisterProperty> list = new List<CompanyRegisterProperty>();
            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new CompanyRegisterProperty
                {
                    Company_Id = Convert.ToInt32(dr["Company_Id"]),
                    Company_Name = dr["Company_Name"].ToString(),
                    Company_Type = dr["Company_Type"].ToString(),
                    DateofEstablish = Convert.ToDateTime(dr["DateofEstablish"]),
                    Company_Address = dr["Company_Address"].ToString(),
                    Company_City = dr["Company_City"].ToString(),
                    Company_Country = dr["Company_Country"].ToString(),
                    Company_ContactNo = Convert.ToInt64(dr["Company_ContactNo"]),
                    Company_Person = dr["Company_Person"].ToString(),
                    Company_Email = dr["Company_Email"].ToString(),
                    Username = dr["Username"].ToString(),
                    Password = dr["Password"].ToString(),
                    Status = dr["Status"].ToString()
                });
            }
            return list;
        }

        public string CompanyAccept()
        {
            sl1.Clear();
            sl1.Add("Company_Id", crp_Obj.Company_Id);

            return Db_Obj.executeprocedure(sl1, "CompanyAccept");
        }

        public string CompanyDecline()
        {
            sl1.Clear();
            sl1.Add("Company_Id", crp_Obj.Company_Id);

            return Db_Obj.executeprocedure(sl1, "CompanyDecline");
        }

        public string CompanyEdit()
        {
            sl1.Clear();

            sl1.Add("Company_Id", crp_Obj.Company_Id);
            sl1.Add("Company_Name", crp_Obj.Company_Name);
            sl1.Add("Company_Type", crp_Obj.Company_Type);
            sl1.Add("DateofEstablish", crp_Obj.DateofEstablish);
            sl1.Add("Company_Address", crp_Obj.Company_Address);
            sl1.Add("Company_City", crp_Obj.Company_City);
            sl1.Add("Company_Country", crp_Obj.Company_Country);
            sl1.Add("Company_ContactNo", crp_Obj.Company_ContactNo);
            sl1.Add("Company_Person", crp_Obj.Company_Person);
            sl1.Add("Company_Email", crp_Obj.Company_Email);

            return Db_Obj.executeprocedure(sl1, "CompanyEdit");
        }

        public string ChangeCompanyPassword()
        {
            sl1.Clear();

            sl1.Add("Company_Id", crp_Obj.Company_Id);
            sl1.Add("Username", crp_Obj.Username);
            sl1.Add("Password", crp_Obj.Password);

            return Db_Obj.executeprocedure(sl1, "changecompanyPwd");
        }

        public void selectcompanybyId()
        {
            sl1.Clear();
            sl1.Add("Company_Id", crp_Obj.Company_Id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(sl1, "selectcompanybyId");
            if (dt.Rows.Count > 0)
            {
                crp_Obj.Company_Name = dt.Rows[0].ItemArray[1].ToString();
                crp_Obj.Company_Type = dt.Rows[0].ItemArray[2].ToString();
                crp_Obj.DateofEstablish = Convert.ToDateTime(dt.Rows[0].ItemArray[3]);
                crp_Obj.Company_Address = dt.Rows[0].ItemArray[4].ToString();
                crp_Obj.Company_City = dt.Rows[0].ItemArray[5].ToString();
                crp_Obj.Company_Country = dt.Rows[0].ItemArray[6].ToString();
                crp_Obj.Company_ContactNo = Convert.ToInt64(dt.Rows[0].ItemArray[7]);
                crp_Obj.Company_Person = dt.Rows[0].ItemArray[8].ToString();
                crp_Obj.Company_Email = dt.Rows[0].ItemArray[9].ToString();
                crp_Obj.Username = dt.Rows[0].ItemArray[10].ToString();
            }
        }
    }
}
