using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YuvaConnect
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAlumni();
            }
        }

        private void BindAlumni(string branch = "", string searchTerm = "")
        {
            string connectionString = ConfigurationManager.ConnectionStrings["YUVA_CONNECTConnectionString"].ConnectionString;
            string query = "SELECT STUDENT_ID, NAME, BRANCH, IMAGE_URL FROM STUDENT WHERE 1 = 1";

            // Filter based on selected branch
            if (!string.IsNullOrEmpty(branch))
            {
                query += " AND BRANCH = @Branch";
            }

            // Filter based on search term for name
            if (!string.IsNullOrEmpty(searchTerm))
            {
                query += " AND NAME LIKE '%' + @SearchTerm + '%'";
            }

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    if (!string.IsNullOrEmpty(branch))
                    {
                        cmd.Parameters.AddWithValue("@Branch", branch);
                    }

                    if (!string.IsNullOrEmpty(searchTerm))
                    {
                        cmd.Parameters.AddWithValue("@SearchTerm", searchTerm);
                    }

                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        Repeater1.DataSource = dt;
                        Repeater1.DataBind();
                    }
                }
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string branch = ddlBranch.SelectedValue;
            string searchTerm = txtSearch.Text;
            BindAlumni(branch, searchTerm);
        }
    }
}