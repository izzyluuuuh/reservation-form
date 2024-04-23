<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="output.aspx.cs" Inherits="ReservationWebpage.output" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reservation Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
          background-image: url("img/sunset.jpg"); /* Replace with your image path */
          background-size: cover; /* Resize the image to cover the container */
          background-position: center; /* Center the image horizontally and vertically */
        }
        .container {
          margin: 2rem auto;
          border: 1px solid #ddd;
          border-radius: 4px;
          padding: 1rem;
          width: 500px;
          backdrop-filter: blur(6px) saturate(180%); /* Apply blur and adjust color saturation */
          background-color: rgba(255, 255, 255, 0.3); /* White background with slight transparency */
        }

        .container h1 {
          text-align: center;
          margin-bottom: 1rem; 
        }

        .container p {
          margin-bottom: 0.5rem; 
        }

        .container p strong {
          display: inline-block; 
          width: 120px; 
          font-weight: bold; 
        }

        .container p span {
          margin-left: 10px; 
        }

        .container ul {
          list-style: circle;
          padding: 0; 
          margin-left: 30px;
        }

        .container ul li {
          margin-bottom: 5px; 
        }

    </style>
</head>
<body>
<div class="container">
  <h1>Reservation Details</h1>
  <p><strong>Full Name:</strong> <span id="fullNameOutput"></span></p>
  <p><strong>Address:</strong> <span id="addressOutput"></span></p>
  <p><strong>ID Type:</strong> <span id="idTypeOutput"></span></p>
  <p><strong>ID Number:</strong> <span id="idNumberOutput"></span></p>
  <p><strong>Room Number:</strong> <span id="roomNumberOutput"></span></p>
  <p><strong>Date In:</strong> <span id="dateInOutput"></span></p>
  <p><strong>Date Out:</strong> <span id="dateOutOutput"></span></p>
  <p><strong>Rate/Period:</strong></p>
  <ul>
    <li>Room Type: <span id="roomType"></span></li>
    <li>Number of Nights: <span id="numNights"></span></li>
  </ul>
  <p><strong>Total Charges:</strong> <span id="totalChargesOutput"></span></p>
  <p><strong>Special Request:</strong> <span id="requestOutput"></span></p>
</div>
</body>
</html>