using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PIT4RPG.CC;

namespace PIT4RPG_EF
{
    public partial class BattleScherm : System.Web.UI.Page
    {
        CCVechten localCC = new CCVechten();

        protected void Page_Load(object sender, EventArgs e)
        {
            lblNaam.Text = localCC.GeefNaam();
        }

        protected void btVecht_Click(object sender, EventArgs e)
        {
            localCC.Vechten();
        }
    }
}