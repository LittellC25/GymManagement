using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProgramsPriceList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ASPxGridView2_BeforePerformDataSelect(object sender, EventArgs e)
    {
        Session["program_id"] = (sender as DevExpress.Web.ASPxGridView).GetMasterRowKeyValue();
    }
}