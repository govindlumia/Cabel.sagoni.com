using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Data;

/// <summary>
/// Summary description for clsCable
/// </summary>
public class clsCable
{
    string con_str = ConfigurationManager.ConnectionStrings["SlickTicket"].ConnectionString;
    SqlCommand objCommand;
    SqlConnection objConnection;
    SqlDataAdapter objDataAdapter;
    SqlDataReader dataReader;
    DataSet objDataSet;
	public clsCable()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private string _vc_no;
    public string vc_no
    {
        get
        {
            return _vc_no;
        }
        set
        {
            _vc_no = value;
        }
    }
    private string _PAF;
    public string PAF
    {
        get
        {
            return _PAF;
        }
        set
        {
            _PAF = value;
        }
    }
    private string _Operator;
    public string Operator
    {
        get
        {
            return _Operator;
        }
        set
        {
            _Operator = value;
        }
    } 

    private string _customer_id;
         public string customer_id
    {
        get
        {
            return _customer_id;
        }
        set
        {
            _customer_id = value;
        }
    } 
    private string _sno;
    public string sno
    {
        get
        {
            return _sno;
        }
        set
        {
            _sno = value;
        }
    } 

    private string _Adv_payment;
public string Adv_payment
    {
        get
        {
            return _Adv_payment;
        }
        set
        {
            _Adv_payment = value;
        }
    }   

private string  _Connection_Status;
    public string Connection_Status
    {
        get
        {
            return _Connection_Status;
        }
        set
        {
            _Connection_Status = value;
        }
    }   



 private string  _a_la_carte_amount;
    public string a_la_carte_amount
    {
        get
        {
            return _a_la_carte_amount;
        }
        set
        {
            _a_la_carte_amount = value;
        }
    }    


 private string  _a_la_carte;
    public string a_la_carte
    {
        get
        {
            return _a_la_carte;
        }
        set
        {
            _a_la_carte = value;
        }
    }  

     private string  _p_amount;
    public string p_amount
    {
        get
        {
            return _p_amount;
        }
        set
        {
            _p_amount = value;
        }
    }
    private string _search_value;
public string search_value
    {
        get
        {
            return _search_value;
        }
        set
        {
            _search_value = value;
        }
    }  
    private string _totalamount;
        public string totalamount
    {
        get
        {
            return _totalamount;
        }
        set
        {
            _totalamount = value;
        }
    }  
 private string  _package;
    public string package
    {
        get
        {
            return _package;
        }
        set
        {
            _package = value;
        }
    }  

       private string  _STV_no;
    public string STV_no
    {
        get
        {
            return _STV_no;
        }
        set
        {
            _STV_no = value;
        }
    }   
        private string  _REF;
    public string REF
    {
        get
        {
            return _REF;
        }
        set
        {
            _REF = value;
        }
    }
    private string _DEN;
    public string DEN
    {
        get
        {
            return _DEN;
        }
        set
        {
            _DEN = value;
        }
    }  
   private string  _network;
    public string network
    {
        get
        {
            return _network;
        }
        set
        {
            _network = value;
        }
    }
    private DateTime _from_date;
    public DateTime from_date
    {
        get
        {
            return _from_date;
        }
        set
        {
            _from_date = value;
        }
    }
    private DateTime _to_date;
    public DateTime to_date
    {
        get
        {
            return _to_date;
        }
        set
        {
            _to_date = value;
        }
    } 

 private DateTime _rewenal_date;
    public DateTime rewenal_date
    {
        get
        {
            return _rewenal_date;
        }
        set
        {
            _rewenal_date = value;
        }
    }    

       private DateTime _date_of_connection;
    public DateTime date_of_connection
    {
        get
        {
            return _date_of_connection;
        }
        set
        {
            _date_of_connection = value;
        }
    }          
      private DateTime _Adv_from_Date;
    public DateTime Adv_from_Date
    {
        get
        {
            return _Adv_from_Date;
        }
        set
        {
            _Adv_from_Date = value;
        }
    }          
           
    private DateTime _Adv_to_Date;
    public DateTime Adv_to_Date
    {
        get
        {
            return _Adv_to_Date;
        }
        set
        {
            _Adv_to_Date = value;
        }
    }       
           
   private string _remarks;
    public string remarks
    {
        get
        {
            return _remarks;
        }
        set
        {
            _remarks = value;
        }
    }
    private string _created_by;
    public string created_by
    {
        get
        {
            return _created_by;
        }
        set
        {
            _created_by = value;
        }
    }
    private string _flag;
    public string Flag
    {
        get
        {
            return _flag;
        }
        set
        {
            _flag = value;
        }
    }
    private string _customer_name;
    public string customer_name
    {
        get
        {
            return _customer_name;
        }
        set
        {
            _customer_name = value;
        }
    }
    private string _mobile;
    public string mobile
    {
        get
        {
            return _mobile;
        }
        set
        {
            _mobile = value;
        }
    }
    private string _other_contact;
    public string other_contact
    {
        get
        {
            return _other_contact;
        }
        set
        {
            _other_contact = value;
        }
    }
    private string _email;
    public string email
    {
        get
        {
            return _email;
        }
        set
        {
            _email = value;
        }
    }
    private string _house_no;
    public string house_no
    {
        get
        {
            return _house_no;
        }
        set
        {
            _house_no = value;
        }
    }
    private string _hfloor;
    public string hfloor
    {
        get
        {
            return _hfloor;
        }
        set
        {
            _hfloor = value;
        }
    }
     private string _block;
    public string block
    {
        get
        {
            return _block;
        }
        set
        {
            _block = value;
        }
    }
    private string _status_s;
    public string status_s
    {
        get
        {
            return _status_s;
        }
        set
        {
            _status_s = value;
        }
    }
    private string _sector;
    public string sector
    {
        get
        {
            return _sector;
        }
        set
        {
            _sector = value;
        }
    }
    public string faulty_Insert(clsCable obj_cable)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "faulty_Insert";
            objCommand.Parameters.AddWithValue("@sno", sno);
            objCommand.Parameters.AddWithValue("@stb", STV_no);
            objCommand.Parameters.AddWithValue("@send_date", date_of_connection);
            objCommand.Parameters.AddWithValue("@remarks", remarks);
            objCommand.Parameters.AddWithValue("@status_s", status_s);
            objCommand.Parameters.AddWithValue("@flag", Flag);
            objCommand.Parameters.AddWithValue("@created_by", created_by);



            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public SqlDataReader ddstatus_s()
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "ddstatus_s";
        // objCommand.Parameters.AddWithValue("@Flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    public SqlDataReader Payment_select_update(string sno)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "Payment_select_update";
        objCommand.Parameters.AddWithValue("@sno", sno);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public SqlDataReader NOC_select_update(string sno)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "NOC_select_update";
        objCommand.Parameters.AddWithValue("@sno", sno);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public DataTable Payment_select(clsCable obj_cable)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Payment_select";
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            objCommand.Parameters.AddWithValue("@search_value", search_value);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable NOC_select(clsCable obj_cable)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "NOC_select";
            objCommand.Parameters.AddWithValue("@search_value", search_value);
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable faulty_select(clsCable obj_cable)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "faulty_select";
            objCommand.Parameters.AddWithValue("@search_value", search_value);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public SqlDataReader dd_NetworkCompany_select()
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "dd_NetworkCompany_select";
        // objCommand.Parameters.AddWithValue("@Flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    public SqlDataReader package_dd()
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "package_dd";
        // objCommand.Parameters.AddWithValue("@Flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    public string Customer1_insert(clsCable obj_cable)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "Customer1_insert";
            objCommand.Parameters.AddWithValue("@sno", sno);
            objCommand.Parameters.AddWithValue("@vc_no", vc_no);
            objCommand.Parameters.AddWithValue("@PAF", PAF);
            objCommand.Parameters.AddWithValue("@Operator", Operator);
            objCommand.Parameters.AddWithValue("@customer_name", customer_name);
            objCommand.Parameters.AddWithValue("@remarks", remarks);
            objCommand.Parameters.AddWithValue("@Flag", Flag);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            objCommand.Parameters.AddWithValue("@customer_id", customer_id);
            objCommand.Parameters.AddWithValue("@mobile", mobile);
            objCommand.Parameters.AddWithValue("@other_contact", other_contact);
            objCommand.Parameters.AddWithValue("@email", email);
            objCommand.Parameters.AddWithValue("@block", block);
            objCommand.Parameters.AddWithValue("@house_no", house_no);
            objCommand.Parameters.AddWithValue("@hfloor", hfloor);
            objCommand.Parameters.AddWithValue("@sector", sector);
            objCommand.Parameters.AddWithValue("@network", network);
            objCommand.Parameters.AddWithValue("@STV_no", STV_no);
            objCommand.Parameters.AddWithValue("@package", package);
            objCommand.Parameters.AddWithValue("@p_amount", p_amount);
            objCommand.Parameters.AddWithValue("@date_of_connection", date_of_connection);
            objCommand.Parameters.AddWithValue("@rewenal_date", rewenal_date);
            objCommand.Parameters.AddWithValue("@a_la_carte", a_la_carte);
            objCommand.Parameters.AddWithValue("@a_la_carte_amount", a_la_carte_amount);
            objCommand.Parameters.AddWithValue("@Connection_Status", Connection_Status);
            objCommand.Parameters.AddWithValue("@Adv_payment", Adv_payment);
            objCommand.Parameters.AddWithValue("@Adv_from_Date", Adv_from_Date);
            objCommand.Parameters.AddWithValue("@Adv_to_Date", Adv_to_Date);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;
        }
    }
    public string Customer_insert(clsCable obj_cable)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
              
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "Customer_insert";
            objCommand.Parameters.AddWithValue("@sno", sno);
            objCommand.Parameters.AddWithValue("@vc_no", vc_no);
            objCommand.Parameters.AddWithValue("@PAF", PAF);
            objCommand.Parameters.AddWithValue("@Operator", Operator);
            objCommand.Parameters.AddWithValue("@customer_name",customer_name);
            objCommand.Parameters.AddWithValue("@remarks", remarks);
            objCommand.Parameters.AddWithValue("@Flag", Flag);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            //objCommand.Parameters.AddWithValue("@customer_id", customer_id);
            objCommand.Parameters.AddWithValue("@mobile", mobile);
            objCommand.Parameters.AddWithValue("@other_contact", other_contact);
            objCommand.Parameters.AddWithValue("@email", email);
            objCommand.Parameters.AddWithValue("@block", block);
            objCommand.Parameters.AddWithValue("@house_no", house_no);
            objCommand.Parameters.AddWithValue("@hfloor", hfloor);
            objCommand.Parameters.AddWithValue("@sector", sector);
            objCommand.Parameters.AddWithValue("@network", network);
            objCommand.Parameters.AddWithValue("@STV_no", STV_no);
            objCommand.Parameters.AddWithValue("@package", package);
            objCommand.Parameters.AddWithValue("@p_amount", p_amount);
            objCommand.Parameters.AddWithValue("@date_of_connection", date_of_connection);
            objCommand.Parameters.AddWithValue("@rewenal_date", rewenal_date);
            objCommand.Parameters.AddWithValue("@a_la_carte", a_la_carte);
            objCommand.Parameters.AddWithValue("@a_la_carte_amount", a_la_carte_amount);
            objCommand.Parameters.AddWithValue("@Connection_Status", Connection_Status);
            objCommand.Parameters.AddWithValue("@Adv_payment",Adv_payment);
            objCommand.Parameters.AddWithValue("@Adv_from_Date", Adv_from_Date);
            objCommand.Parameters.AddWithValue("@Adv_to_Date", Adv_to_Date);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public SqlDataReader Customer_id_select(string customer_id)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "Customer_id_select";
        objCommand.Parameters.AddWithValue("@Customer_Id", customer_id);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    public SqlDataReader connectionstatus_dd()
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "connectionstatus_dd";
        // objCommand.Parameters.AddWithValue("@Flag", flag);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        //objConnection.Close();
        objCommand = null;
        objConnection = null;
        return dataReader;

    }
    public SqlDataReader Customer_update_view(string sno)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "Customer_update_view";
        objCommand.Parameters.AddWithValue("@sno", sno);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public SqlDataReader CustomerID_select(string customer_id)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "CustomerID_select";
        objCommand.Parameters.AddWithValue("@customer_id", customer_id);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public SqlDataReader faulty_update_view(string sno)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "faulty_update_view";
        objCommand.Parameters.AddWithValue("@sno", sno);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }

    public SqlDataReader stv_filter(string STV_no)
    {
        objConnection = new SqlConnection(con_str);
        objConnection.ConnectionString = con_str;
        objConnection.Open();
        objCommand = new SqlCommand();
        objCommand.CommandType = CommandType.StoredProcedure;
        objCommand.CommandTimeout = 0;
        objCommand.CommandText = "stv_filter";
        objCommand.Parameters.AddWithValue("@STV_no", STV_no);
        objCommand.Connection = objConnection;
        dataReader = objCommand.ExecuteReader(CommandBehavior.CloseConnection);
        objCommand.Dispose();
        objCommand = null;
        objConnection = null;
        return dataReader;
    }
    public string Payment_Insert(clsCable obj_cable)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "Payment_Insert";
            objCommand.Parameters.AddWithValue("@sno", sno);
            objCommand.Parameters.AddWithValue("@customer_id", customer_id);
            objCommand.Parameters.AddWithValue("@payment_from", from_date);
            objCommand.Parameters.AddWithValue("@payment_to", to_date);
            objCommand.Parameters.AddWithValue("@Operator", Operator);
            objCommand.Parameters.AddWithValue("@Total_amount", totalamount);
            objCommand.Parameters.AddWithValue("@flag", Flag);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public string NOC_Insert(clsCable obj_cable)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {

            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objConnection.Open();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandTimeout = 0;
            objCommand.CommandText = "NOC_Insert";
            objCommand.Parameters.AddWithValue("@sno", sno);
            objCommand.Parameters.AddWithValue("@STV_no", STV_no);
            objCommand.Parameters.AddWithValue("@DEN", DEN);
            objCommand.Parameters.AddWithValue("@dates", date_of_connection);
            objCommand.Parameters.AddWithValue("@REF", REF);
            objCommand.Parameters.AddWithValue("@flag", Flag);
            objCommand.Parameters.AddWithValue("@created_by", created_by);
            dataReader = objCommand.ExecuteReader();
            string j = "0";
            if (dataReader.Read())
            {
                j = dataReader[0].ToString();
            }
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            dataReader.Close();
            return j;

        }
    }
    public DataTable Payment_select_Report(clsCable obj_cable)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Payment_select_Report";
            // objCommand.Parameters.AddWithValue("@search_value", search_value);
            // objCommand.Parameters.AddWithValue("@lead_status", lead_status);
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
    public DataTable Customer_select_Report(clsCable obj_cable)
    {
        using (SqlConnection objConnection = new SqlConnection(con_str))
        {
            SqlCommand objCommand;
            objCommand = objConnection.CreateCommand();
            objCommand.CommandType = CommandType.StoredProcedure;
            objCommand.CommandText = "Customer_select_Report";
            // objCommand.Parameters.AddWithValue("@search_value", search_value);
            // objCommand.Parameters.AddWithValue("@lead_status", lead_status);
            objCommand.Parameters.AddWithValue("@from_date", from_date);
            objCommand.Parameters.AddWithValue("@to_date", to_date);
            objConnection.Open();
            objDataAdapter = new SqlDataAdapter();
            objDataAdapter.SelectCommand = objCommand;
            objDataSet = new DataSet();
            objDataAdapter.Fill(objDataSet);
            objCommand.Dispose();
            objConnection.Close();
            objConnection.Dispose();
            return objDataSet.Tables[0];

        }
    }
}