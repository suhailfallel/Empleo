using System;
using DLL;
using DAL;
using BLL.Property;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Manager
{
    public class SeekerRegisterManager
    {
        private DBhelper Db_Obj = new DBhelper();
        public SeekerRegistrationProperty srp_Obj = new SeekerRegistrationProperty();
        private SortedList sl1 = new SortedList();

        public string SeekerInsert()
        {
            sl1.Clear();

            sl1.Add("Seeker_FirstName", srp_Obj.Seeker_FirstName);
            sl1.Add("Seeker_LastName", srp_Obj.Seeker_LastName);
            sl1.Add("Seeker_DateofBirth", srp_Obj.Seeker_DateofBirth);
            sl1.Add("Highest_Education", srp_Obj.Highest_Education);
            sl1.Add("Seeker_Email", srp_Obj.Seeker_Email);
            sl1.Add("Seeker_Address", srp_Obj.Seeker_Address);
            sl1.Add("Seeker_District", srp_Obj.Seeker_District);
            sl1.Add("Seeker_State", srp_Obj.Seeker_State);
            sl1.Add("Seeker_ContactNo", srp_Obj.Seeker_ContactNo);
            sl1.Add("Resume", srp_Obj.Resume);
            sl1.Add("Username", srp_Obj.Username);
            sl1.Add("Password", srp_Obj.Password);

            return Db_Obj.executeprocedure(sl1, "SeekerInsert");
        }

        public string SeekerEdit()
        {
            sl1.Clear();

            sl1.Add("Seeker_Id",srp_Obj.Seeker_Id);
            sl1.Add("Seeker_FirstName", srp_Obj.Seeker_FirstName);
            sl1.Add("Seeker_LastName", srp_Obj.Seeker_LastName);
            sl1.Add("Seeker_DateofBirth", srp_Obj.Seeker_DateofBirth);
            sl1.Add("Highest_Education", srp_Obj.Highest_Education);
            sl1.Add("Seeker_Email", srp_Obj.Seeker_Email);
            sl1.Add("Seeker_Address", srp_Obj.Seeker_Address);
            sl1.Add("Seeker_District", srp_Obj.Seeker_District);
            sl1.Add("Seeker_State", srp_Obj.Seeker_State);
            sl1.Add("Seeker_ContactNo", srp_Obj.Seeker_ContactNo);
            sl1.Add("Resume", srp_Obj.Resume);

            return Db_Obj.executeprocedure(sl1, "SeekerEdit");
        }

        public string SeekerPasswordChange()
        {
            sl1.Clear();

            sl1.Add("Seeker_Id", srp_Obj.Seeker_Id);
            sl1.Add("Username", srp_Obj.Username);
            sl1.Add("Password", srp_Obj.Password);

            return Db_Obj.executeprocedure(sl1, "SeekerPwdChange");
        }

        public List<SeekerRegistrationProperty> selectallSeeker()
        {
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable("selectallSeeker");
            List<SeekerRegistrationProperty> list = new List<SeekerRegistrationProperty>();
            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new SeekerRegistrationProperty
                {
                    Seeker_Id = Convert.ToInt32(dr["Seeker_Id"]),
                    Seeker_FirstName = dr["Seeker_FirstName"].ToString(),
                    Seeker_LastName = dr["Seeker_LastName"].ToString(),
                    Seeker_DateofBirth = Convert.ToDateTime(dr["Seeker_DateofBirth"]),
                    Highest_Education = dr["Highest_Education"].ToString(),
                    Seeker_Email = dr["Seeker_Email"].ToString(),
                    Seeker_Address = dr["Seeker_Address"].ToString(),
                    Seeker_District = dr["Seeker_District"].ToString(),
                    Seeker_State = dr["Seeker_State"].ToString(),
                    Seeker_ContactNo = dr["Seeker_ContactNo"].ToString(),
                    Username = dr["Username"].ToString(),
                    Password = dr["Password"].ToString()
                });
            }
            return list;
        }

        public void selectseekerbyId()
        {
            sl1.Clear();
            sl1.Add("Seeker_Id", srp_Obj.Seeker_Id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(sl1, "selectseekerbyId");
            if(dt.Rows.Count > 0)
            {
                srp_Obj.Seeker_FirstName = dt.Rows[0].ItemArray[1].ToString();
                srp_Obj.Seeker_LastName = dt.Rows[0].ItemArray[2].ToString();
                srp_Obj.Seeker_DateofBirth = Convert.ToDateTime(dt.Rows[0].ItemArray[3]);
                srp_Obj.Highest_Education = dt.Rows[0].ItemArray[4].ToString();
                srp_Obj.Seeker_Email = dt.Rows[0].ItemArray[5].ToString();
                srp_Obj.Seeker_Address = dt.Rows[0].ItemArray[6].ToString();
                srp_Obj.Seeker_District = dt.Rows[0].ItemArray[7].ToString();
                srp_Obj.Seeker_State = dt.Rows[0].ItemArray[8].ToString();
                srp_Obj.Seeker_ContactNo = dt.Rows[0].ItemArray[9].ToString();
                srp_Obj.Resume = dt.Rows[0].ItemArray[10].ToString();
                srp_Obj.Username = dt.Rows[0].ItemArray[11].ToString();
            }
            
        }
    }
}
