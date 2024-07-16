using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibrarySphere
{
    public partial class SignUp : System.Web.UI.Page
    {
        DBConnect dbcon = new DBConnect();
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Autogenerate();
            }
        }
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            if(checkDuplicationMemberExist())
            {
                //Response.Write("<script>alert('User already exists with this ID and Email!');</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error', 'User already exists with this ID and Email!', 'error')", true);
            }
            else
            {
                createAccount();
            }

        }
        private void createAccount()
        {
            cmd = new SqlCommand("sp_InsertSignup", dbcon.GetCon());
            cmd.Parameters.AddWithValue("@full_name", txtFullName.Text);
            cmd.Parameters.AddWithValue("@dob", txtDOB.Text);
            cmd.Parameters.AddWithValue("@contact_no", txtContactNO.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@state", ddlState.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@city", txtCity.Text);
            cmd.Parameters.AddWithValue("@pincode", txtPIN.Text);
            cmd.Parameters.AddWithValue("@full_address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@member_id", txtUserID.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@account_status", "pending");
            dbcon.OpenCon();
            cmd.CommandType = CommandType.StoredProcedure;
            
            if(cmd.ExecuteNonQuery()==1)
            {
                //Response.Write("<script>alert('Account created successfully!');</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(),"alert", "swal('Success', 'Account created successfully!', 'success')", true);
                clrcontrol();
                Autogenerate();
            }
            else
            {
                //Response.Write("<script>alert('Error! Try again.');</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error', 'Account created successfully!', 'error')", true);
            }
            dbcon.CloseCon();
        }
        protected bool checkDuplicationMemberExist()
        {
            cmd = new SqlCommand("sp_CheckDuplicateMember", dbcon.GetCon());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@member_id",txtUserID.Text.Trim());
            cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
            dbcon.OpenCon();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if(dt.Rows.Count >= 1)
            {
                return true;
            }
            else
            {
                return false; 
            }
        }
        public void Autogenerate()
        {
            try
            {
                int r;
                dbcon.OpenCon();
                cmd = new SqlCommand("select max(member_id)as ID from member_master_tbl", dbcon.GetCon());
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    string d = dr[0].ToString();
                    if (d == "")
                    {
                        txtUserID.Text = "1001";
                    }
                    else
                    {
                        r = Convert.ToInt32(dr[0].ToString());
                        r = r + 1;
                        txtUserID.Text = r.ToString();
                    }
                    txtUserID.ReadOnly = true;
                }
                dbcon.CloseCon();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(" + ex.Message + ")</script>");

            }
        }
        private void clrcontrol()
        {
            txtFullName.Text= txtDOB.Text= txtContactNO.Text= txtEmail.Text= ddlState.SelectedItem.Text= 
                txtCity.Text= txtPIN.Text= txtAddress.Text = string.Empty;
            ddlState.SelectedItem.Text = "Select";
            txtFullName.Focus();
        }
    }
}