using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dropdownsum
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private static int count;
        protected void Page_Load(object sender, EventArgs e)
        {
       
               

            this.Form.DefaultButton = "btnShow";

        }

        

        protected void btnShow_Click(object sender, EventArgs e)
        {
            ddllist();
        }

        void ddllist()
        {

            if (txtNum.Text == "")
                {
                lblSum.Text = "Enter Number to Generate dropdownlist first!";
                return;
                }
            count = Convert.ToInt16(txtNum.Text);
            for (int i = 0; i < count; i++)
            {
                DropDownList ddl = new DropDownList();
              
                ddl.ID = "ddl_" + i.ToString();

                ddl.Attributes.Add("style", "padding:5px");
            
                for (int k = 0; k <= 10; k++)
                {
                    ddl.Items.Add(new ListItem("num " + k.ToString(), k.ToString()));
                   
                }
                tbllist.Controls.Add(ddl);
                }
        }
    }
}