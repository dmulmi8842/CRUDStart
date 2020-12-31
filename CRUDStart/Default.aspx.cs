using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUDStart
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LoadRecord();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=MSI\\SQLEXPRESS;Initial Catalog=CrudDB;Integrated Security=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand comm = new SqlCommand("Insert into StudentInfo_Tab values('"+int.Parse(TextBox1.Text)+"', '"+TextBox2.Text+"', '"+DropDownList1.SelectedValue+"', '"+double.Parse(TextBox3.Text)+"', '"+TextBox4.Text+"')",con);
            comm.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord();
        }

        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("Select * from StudentInfo_Tab", con);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}