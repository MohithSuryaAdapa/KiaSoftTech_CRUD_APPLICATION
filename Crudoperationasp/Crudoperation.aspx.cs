using System;
using System.Data.SqlClient;
using System.Configuration;

namespace Crudoperationasp
{

    public partial class Crudoperation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlCon"].ConnectionString);
        SqlCommand cmd = null;
        protected void Page_Load(object sender, EventArgs e)
        {
        

        }    
       protected void Button1_Click(object sender, EventArgs e)
        {

                string query = "insert into employeedetails values(@empid,@empname,@job,@empsalary,@empnumber)";
               
                if (CRUD(query))
                {
                    lblRes.Text = "Record Inserted";
                }
                else
                {
                    lblRes.Text = "Record Not Inserted";
                }
            }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

            cmd = new SqlCommand("Delete from employeedetails where empid=" + txtEmpid.Text,con);
            con.Open();
            int i=cmd.ExecuteNonQuery();
            con.Close();
            if (i == 0) 
            {
                lblRes.Text = "No Record to Delete";
            }
            else
            {
                lblRes.Text = i  + " Record Deleted";
            }

        }
        public bool CRUD(string query)
        {
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@empid", txtEmpid.Text);
            cmd.Parameters.AddWithValue("@empname", txtEmpname.Text);
            cmd.Parameters.AddWithValue("@job", txtjob.Text);
            cmd.Parameters.AddWithValue("@empsalary", txtEmpsalary.Text);
            cmd.Parameters.AddWithValue("@empnumber", txtEmpnumber.Text);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if(i==0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string query = "update employeedetails set  Empname=@empname , Job=@job , Empsalary=@empsalary , Empnumber=@empnumber Where Empid = @empid";
            if(CRUD(query))
            {
                lblRes.Text = "Record Update";
            }
            else
            {
                lblRes.Text = "Record not Updated";
            }
        }
    }
}