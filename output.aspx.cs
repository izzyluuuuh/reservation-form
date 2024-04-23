using System;
using System.Web.UI;
using System.Web.UI.WebControls;  // Add this namespace

namespace ReservationWebpage
{
    public partial class output : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fullName = Request.Form["fullName"];
            string address = Request.Form["address"];
            string idType = Request.Form["idType"];
            string idNumber = Request.Form["idNumber"];
            string roomNumber = Request.Form["roomNumber"];
            string dateIn = Request.Form["dateIn"];
            string dateOut = Request.Form["dateOut"];
            string roomType = Request.Form["roomType"];
            string numNights = Request.Form["numNights"];
            string totalCharges = Request.Form["totalCharges"];
            string request = Request.Form["request"];

            // Update output elements with retrieved data (assuming IDs match in output.aspx)
            Label fullNameOutput = (Label)FindControl("fullNameOutput");
            fullNameOutput.Text = fullName;

            Label addressOutput = (Label)FindControl("addressOutput");
            addressOutput.Text = address;

            Label idTypeOutput = (Label)FindControl("idTypeOutput");
            idTypeOutput.Text = idType;

            Label idNumberOutput = (Label)FindControl("idNumberOutput");
            idNumberOutput.Text = idNumber;

            Label roomNumberOutput = (Label)FindControl("roomNumberOutput");
            roomNumberOutput.Text = roomNumber;

            Label dateInOutput = (Label)FindControl("dateInOutput");
            dateInOutput.Text = dateIn;

            Label dateOutOutput = (Label)FindControl("dateOutOutput");
            dateOutOutput.Text = dateOut;

            Label roomTypeLabel = (Label)FindControl("roomType"); // Assuming this is a Label control
            roomTypeLabel.Text = roomType;

            Label numNightsLabel = (Label)FindControl("numNights"); // Assuming this is a Label control
            numNightsLabel.Text = numNights;

            Label totalChargesOutput = (Label)FindControl("totalChargesOutput");
            totalChargesOutput.Text = totalCharges;

            Label requestOutput = (Label)FindControl("requestOutput");
            requestOutput.Text = request;
        }
    }
}