using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OnlineMobile
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void MobileDetail(object sender, EventArgs e)
        {
            Button btn = (sender as Button);
            string id = btn.CommandArgument;
            Response.Redirect("~/MobileDetails.aspx?id=" + id);

        }
        
    }
}