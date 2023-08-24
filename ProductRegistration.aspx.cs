using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppThree
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!Page.IsPostBack)
            {
                Category.Items.Add("Foot Ball");
                Category.Items.Add("Valey Ball");
                Category.Items.Add("Cricket Ball");
                Category.Items.Add("Shuttle");
                Category.Items.Add("Pen");
                Category.Items.Add("Mat");
                Category.Items.Add("Other");

            }
           
        }
        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            LblInfo.Visible = true;
            LblInfo.Text = "Registration success!!!";
            LblInfo.Text += "<br>Name: " + TxtName.Text;
            LblInfo.Text += "<br>Category:" + Category.Text;
            LblInfo.Text += "<br>Product Price:" + Price.Text;
            LblInfo.Text += "<br>Description:" + TxtDesc.Text;
            LblInfo.Text += "<br>Release Date:" + Date.SelectionMode;           
           
        }



    }
}