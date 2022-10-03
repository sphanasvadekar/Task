using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dropdownsum
{
    public partial class DDL : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Fill_Country();
                ddlstate.Items.Insert(0, new ListItem("--Select State--", "0"));
                ddlcity.Items.Insert(0, new ListItem("--Select City--", "0"));

                ddlstate.Enabled = false;
                ddlcity.Enabled = false;
            }
        }

        public void Fill_Country()
        {
            try
            {
                string query = "select * from  Countries";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                int i = 1;
                ddlcountry.Items.Insert(0, new ListItem("--Select Country--", "0"));
                while (rdr.Read())
                {
                    ddlcountry.Items.Insert(i, new ListItem(rdr["Country_Name"].ToString(), rdr["Country_ID"].ToString()));
                    i++;
                }
              


            }
            catch (Exception ex)
            {
                throw new Exception(" An Error Occured", ex);

            }
        }

        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from  States where Country_ID = @cid";
                SqlCommand cmd = new SqlCommand();
                cmd.Parameters.AddWithValue("@cid", ddlcountry.SelectedValue);
                cmd.CommandText = query;
                cmd.Connection = con;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                int i = 1;
                ddlstate.Items.Clear();
                ddlstate.ClearSelection();
                ddlstate.Items.Insert(0, new ListItem("--Select States--", "0"));
                while (rdr.Read())
                {
                    ddlstate.Items.Insert(i, new ListItem(rdr["State_Name"].ToString(), rdr["State_ID"].ToString()));
                    i++;
                }
                ddlstate.Enabled = true;
                ddlcity.Enabled = false;



            }
            catch (Exception eg)
            {
                throw new Exception(" An Error Occured, Please try Later", eg);
            }
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from  Cities where State_ID = @sid";
                SqlCommand cmd = new SqlCommand();
                cmd.Parameters.AddWithValue("@sid", ddlstate.SelectedValue);
                cmd.CommandText = query;
                cmd.Connection = con;
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                int i = 1;
                ddlcity.Items.Clear();
                ddlcity.ClearSelection();
                ddlcity.Items.Insert(0, new ListItem("--Select Cities--", "0"));
                while (rdr.Read())
                {
                    ddlcity.Items.Insert(i, new ListItem(rdr["City_Name"].ToString(), rdr["City_ID"].ToString()));
                    i++;
                }
                ddlcity.Enabled = true;


            }
            catch (Exception er)
            {
                throw new Exception(" An Error Occured, Please try Later", er);
            }
        }


    }
}