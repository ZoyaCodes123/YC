using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YuvaConnect
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                ViewState["exec_profile"] = "student";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label9.Text = string.Empty;
            Label13.Text = string.Empty;
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Label5.Text = string.Empty;
            Label13.Text = string.Empty;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label5.Text = string.Empty;
            Label9.Text = string.Empty;
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            check_credentials();

        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            check_credentials();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            check_credentials();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Label5.Text = string.Empty;
            Label9.Text = string.Empty;
            Label13.Text = string.Empty;
            Panel1.Visible = true;
            MultiView1.ActiveViewIndex = 0;
        }
        private void check_credentials()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["YUVA_CONNECTConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            
            SqlDataAdapter adap = new SqlDataAdapter();
            DataTable dt = new DataTable();

            try
            {
                conn.Open();

                if (MultiView1.ActiveViewIndex == 0)
                {
                    cmd.CommandText = "SELECT STUDENT_ID,NAME,USERNAME,PASSWORD FROM STUDENT";
                    adap.SelectCommand = cmd;
                    adap.Fill(dt);

                    string unameST, passST, nameST;
                    int flag = 0;
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        unameST = dt.Rows[i]["USERNAME"].ToString();
                        passST = dt.Rows[i]["PASSWORD"].ToString();

                        if (TextBox1.Text == unameST && TextBox2.Text == passST)
                        {
                            nameST = dt.Rows[i]["NAME"].ToString();
                            Label14.Text = "Welcome to YuvaConnect " + nameST + "!";

                            Session["Student_ID"] = dt.Rows[i]["STUDENT_ID"].ToString();
                            ViewState["exec_profile"] = "student";
                            flag = 1;
                            break;
                        }
                    }
                    if (flag == 1)
                    {
                        Panel1.Visible = false;
                        MultiView1.ActiveViewIndex = 3;
                    }
                    else
                    {
                        Label5.Text = "Wrong credentials please try again.";
                        TextBox1.Text = string.Empty;
                    }
                }

                else if (MultiView1.ActiveViewIndex == 1)
                {
                    cmd.CommandText = "SELECT ALUMNI_ID,NAME,USERNAME,PASSWORD FROM ALUMNI";
                    adap.SelectCommand = cmd;
                    adap.Fill(dt);

                    string unameAL, passAL, nameAL;
                    int flag = 0;
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        unameAL = dt.Rows[i]["USERNAME"].ToString();
                        passAL = dt.Rows[i]["PASSWORD"].ToString();

                        if (TextBox3.Text == unameAL && TextBox4.Text == passAL)
                        {
                            nameAL = dt.Rows[i]["NAME"].ToString();
                            Label14.Text = "Welcome to YuvaConnect " + nameAL + "!";

                            Session["AlumniID"] = dt.Rows[i]["ALUMNI_ID"].ToString();
                            ViewState["exec_profile"] = "alumni";
                            flag = 1;
                            break;
                        }
                    }
                    if (flag == 1)
                    {
                        Panel1.Visible = false;
                        MultiView1.ActiveViewIndex = 3;
                    }
                    else
                    {
                        Label9.Text = "Wrong credentials please try again.";
                        TextBox3.Text = string.Empty;
                    }
                }

                else if (MultiView1.ActiveViewIndex == 2)
                {
                    cmd.CommandText = "SELECT ADMIN_ID,NAME,EMAIL,PASSWORD FROM ADMIN";
                    adap.SelectCommand = cmd;
                    adap.Fill(dt);

                    string mailAD, passAD, nameAD;
                    int flag = 0;
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        mailAD = dt.Rows[i]["EMAIL"].ToString().ToLower();
                        passAD = dt.Rows[i]["PASSWORD"].ToString();

                        if (TextBox5.Text == mailAD && TextBox6.Text == passAD)
                        {
                            nameAD = dt.Rows[i]["NAME"].ToString();
                            Label14.Text = "Welcome to YuvaConnect " + nameAD + "!";

                            Session["ADMIN_ID"] = dt.Rows[i]["ADMIN_ID"].ToString();
                            ViewState["exec_profile"] = "admin";
                            flag = 1;
                            break;
                        }
                    }
                    if (flag == 1)
                    {
                        Panel1.Visible = false;
                        MultiView1.ActiveViewIndex = 3;
                    }
                    else
                    {
                        Label13.Text = "Wrong credentials please try again.";
                        TextBox5.Text = string.Empty;
                    }
                }

            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
            finally { conn.Close(); }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {

            switch (ViewState["exec_profile"])
            {
                case "student":
                    Response.Redirect("UPDATE_STUD.aspx");
                    break;
                case "alumni":
                    Response.Redirect("UPDATE_ALUM.aspx");
                    break;
                case "admin":
                    Response.Redirect("UPDATE_ADM.aspx");
                    break;
                default:
                    break;
            }

        }
        protected void Button9_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/NEW_EVENT.aspx");
        }

    }
}

     