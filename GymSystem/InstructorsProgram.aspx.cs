using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GymDataSetTableAdapters;

public partial class InstructorsProgram : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            tbl_InstructorTableAdapter instructor = new tbl_InstructorTableAdapter();
            cboinstructor.DataSource = instructor.GetData();
            cboinstructor.TextField = "instructor_name";
            cboinstructor.ValueField = "instructor_id";
            cboinstructor.DataBind();
        }
    }
}