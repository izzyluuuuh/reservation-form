<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ReservationWebpage._default" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Reservation Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
    body {
      font-family: sans-serif;
      margin: 0;
      padding: 0;
    }

    .container {
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      width: 100vw;
      min-height: 100vh;
      background-color: white;
    }

    .image-section {
      width: 100%;
      height: 150px;
      background-image: url("img/beach.jpg"); /* Replace with the URL of your desired image */
      border-radius: 5px;
      background-size: cover;
      background-position: center;
      display: flex;
      justify-content: center;
      align-items: center;
      color: white;
      font-size: 2rem;
      text-shadow: 0 0 3px rgba(0, 0, 0, 0.7);
    }

    .heading {
      text-align: center;
    }

    .image-section h1 {
      margin: 0;
    }

    .form-container {
      width: 450px;
      background-color: white;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    .form-label {
      display: block;
      margin-bottom: 5px;
    }

    .form-control {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      margin-bottom: 15px;
    }

    .btn {
      padding: 10px 20px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    .btn-primary {
      background-color: #337ab7;
      color: white;
    }

    .btn-secondary {
      background-color: #ccc;
      color: black;
    }

    .room-type {
      margin: 1rem auto;
      border: 1px solid #ddd; 
      border-radius: 4px;
      padding: 1rem; 
    }

    .room-type label {
      display: block; 
      margin-bottom: 5px;
      margin-top: 15px;
      font-weight: bold;

    }

    .room-type select,
    .room-type .total-charges span {
      width: 100%; 
      padding: 5px; 
      border-radius: 3px;
    }

    .total-charges {
      margin-top: 1rem;
    }

    .total-charges strong {
      display: inline-block; 
      width: 50%;
    }

  </style>
</head>
<body>
<div class="container">
    <div class="form-container">
        <div class="image-section">
           <h1><strong>Reservation Form</strong></h1>
         </div><br />
    <form action="output.aspx" method="post">
        <div class="heading">
        <h5>Please complete the form below.</h5><br />
        <h6>Your registration will be verified prior to your arrival.</h6><br />
        </div>
        <div class="mb-3">
            <label for="fullName" class="form-label"><strong>Full Name</strong></label>
            <input type="text" class="form-control" id="fullName" required>
        </div>
        <div class="mb-3">
            <label for="address" class="form-label"><strong>Address</strong></label>
            <input type="text" class="form-control" id="address" required>
        </div>
        <div class="mb-3">
          <label for="idType" class="form-label"><strong>ID Type</strong></label>
          <select class="form-control" id="idType" required>
            <option value="">Select ID Type</option>
            <option value="driverLicense">Driver's License</option>
            <option value="passport">Passport</option>
             <option value="natID">National ID</option>
            </select>
        </div>
        <div class="mb-3">
            <label for="idNumber" class="form-label"><strong>ID Number</strong></label>
            <input type="text" class="form-control" id="idNumber" required>
        </div>
        <div class="mb-3">
            <label for="roomNumber" class="form-label"><strong>Room Number</strong></label>
            <input type="text" class="form-control" id="roomNumber" required>
        </div>
        <div class="mb-3">
            <label for="dateIn" class="form-label"><strong>Date In</strong></label>
            <input type="date" class="form-control" id="dateIn" required>
        </div>
        <div class="mb-3">
            <label for="dateOut" class="form-label"><strong>Date Out</strong></label>
            <input type="date" class="form-control" id="dateOut" required>
        </div>
        <div class="mb-3">
            <label for="rate" class="form-label"><strong>Rate/Period</strong></label>
        <div class="room-type">
            <label for="roomType">Room Type</label>
            <select id="roomType">
              <option value="mountainView">Mountain View ($100/night)</option>
              <option value="oceanView">Ocean View ($120/night)</option>
              <option value="cityView">City View ($140/night)</option>
            </select>

            <label for="numNights">Number of Nights</label>
            <select id="numNights">
            </select>

            <div class="total-charges">
              <label for="totalCharges"><strong>Total Charges</strong></label>
              <span id="totalCharges">$0.00</span>
            </div>
          </div>
        </div>

        <div class="mb-3">
            <label for="request" class="form-label"><strong>Do you have any special request?</strong></label>
            <input type="text" class="form-control" id="request" placeholder="Type here...">
        </div><br />

        <button type="submit" class="btn btn-primary">Checkout</button>
        <button type="reset" class="btn btn-secondary">Cancel</button>
    </form>
</div>
</div>

    <script>
    const roomTypeSelect = document.getElementById('roomType');
    const numNightsSelect = document.getElementById('numNights');
    const totalChargesSpan = document.getElementById('totalCharges');

    // Function to calculate and update total charges
    function updateTotalCharges() {
      const roomType = roomTypeSelect.value;
      const numNights = Number(numNightsSelect.value);
      
      let pricePerNight = 0;
      switch (roomType) {
        case 'mountainView':
          pricePerNight = 100;
          break;
        case 'oceanView':
          pricePerNight = 120;
          break;
        case 'cityView':
          pricePerNight = 140;
          break;
      }
      
      const totalCharges = pricePerNight * numNights;
      totalChargesSpan.textContent = `$${totalCharges.toFixed(2)}`; // Update total charges with formatted price
    }

    // Generate options for number of nights (1 to 10)
    for (let i = 1; i <= 10; i++) {
      const option = document.createElement('option');
      option.value = i;
      option.textContent = i;
      numNightsSelect.appendChild(option);
    }

    // Update total charges on initial load and whenever selection changes
    updateTotalCharges();
    roomTypeSelect.addEventListener('change', updateTotalCharges);
    numNightsSelect.addEventListener('change', updateTotalCharges);
    </script>
</body>
</html>