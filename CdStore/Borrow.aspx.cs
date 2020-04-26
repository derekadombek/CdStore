using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CdStore
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //current date on checkout and metal radio button checked on load
            txtCheckoutDate.Text = DateTime.Today.ToShortDateString();
            rdoMetal.Checked = true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            //success message after user submits
            lblMessage.Text = "Great choice " + txtFirstName.Text + "! Have fun jamming out!";
            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //clears all values
            txtCheckoutDate.Text = DateTime.Today.ToShortDateString();
            txtReturnDate.Text = "";
            ddlNoOfCD.SelectedIndex = -1;
            rdoMetal.Checked = true;
            rdoPunk.Checked = false;
            rdoRap.Checked = false;
            rdoCountry.Checked = false;
            rdoRock.Checked = false;
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            ddlPreferredMethod.SelectedIndex = 0;
            lblMessage.Text = "";
        }
    }
}