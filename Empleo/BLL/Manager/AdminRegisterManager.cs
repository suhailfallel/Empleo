using System;
using BLL.Property;
using DAL;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Manager
{
    public class AdminRegisterManager
    {
        private DBhelper DB_Obj = new DBhelper();
        public AdminRegisterProperty arp_Obj = new AdminRegisterProperty();
        private SortedList sl1 = new SortedList();

        public string AdminInsert()
        {
            sl1.Clear();
            sl1.Add("Username", arp_Obj.Username);
            sl1.Add("Password", arp_Obj.Password);
            sl1.Add("Email", arp_Obj.Email);

            return DB_Obj.executeprocedure(sl1, "AdminInsert");
        }

        public string AdminUpdate()
        {
            sl1.Clear();
            sl1.Add("Username", arp_Obj.Username);
            sl1.Add("Password", arp_Obj.Password);

            return DB_Obj.executeprocedure(sl1, "AdminUpdate");
        }

        public string AdminDelete()
        {
            sl1.Clear();
            sl1.Add("Id", arp_Obj.Id);

            return DB_Obj.executeprocedure(sl1, "AdminDelete");
        }

        public List<AdminRegisterProperty> selectallAdmin()
        {
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable("selectallAdmin");
            List<AdminRegisterProperty> list = new List<AdminRegisterProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                list.Add(new AdminRegisterProperty
                {
                    Id = Convert.ToInt32(dr["Id"]),
                    Username = dr["Username"].ToString(),
                    Password=dr["Password"].ToString(),
                    Role=dr["Role"].ToString(),
                    Status=dr["Status"].ToString()
                });
            }
            return list;
        }

        public string Login()
        {
            sl1.Clear();

            sl1.Add("Username", arp_Obj.Username);
            sl1.Add("Password", arp_Obj.Password);

            return DB_Obj.executeprocedure(sl1, "LoginCheck");
        }
    }
}
