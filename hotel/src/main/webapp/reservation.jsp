<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hotel Reservation Form</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
  <style>
    body {
      background-image: url("./assets/pexels-quark-studio-1159039-2506988.jpg"); /* Corrected image path */
      background-size: cover; /* Cover the entire body */
      background-position: center; /* Center the image */
      background-repeat: no-repeat; /* Prevent the image from repeating */
    }
  </style>
</head>
<body class="flex justify-center items-center min-h-screen">
	<a class="absolute top-5 left-5 px-4 py-2 bg-black text-white text-lg no-underline rounded transition-transform duration-300 ease-in-out hover:bg-blue-400" href="index.jsp">Back</a>


  <div class="w-full max-w-2xl p-8 rounded-lg shadow-md" style="background-color: rgba(255, 255, 255, 0.85);">

    <!-- Image at the top -->
    <div class="flex justify-center mb-6">
      <img src="assets/logo.png" alt="Hotel Logo" class="w-40 h-auto rounded">
    </div>

    <h2 class="text-2xl font-bold text-gray-800 mb-6 text-center">Hotel Reservation Form</h2>

    <!-- Form sends data to processReservation.jsp for processing -->
    <form action="processReservation.jsp" method="post">

      <!-- Full Name -->
      <div class="mb-4">
        <label class="block text-gray-700">Full Name</label>
        <div class="flex space-x-4">
          <input type="text" name="first_name" placeholder="First Name" class="w-1/2 p-2 border rounded-md" required>
          <input type="text" name="last_name" placeholder="Last Name" class="w-1/2 p-2 border rounded-md" required>
        </div>
      </div>

      <!-- Address -->
      <div class="mb-4">
        <label class="block text-gray-700">Address</label>
        <input type="text" name="street_address" placeholder="Street Address" class="w-full p-2 border rounded-md" required>
        <input type="text" name="street_address_line2" placeholder="Street Address Line 2" class="w-full p-2 border rounded-md">
        <div class="flex space-x-4">
          <input type="text" name="city" placeholder="City" class="w-1/2 p-2 border rounded-md" required>
          <input type="text" name="state_province" placeholder="State/Province" class="w-1/4 p-2 border rounded-md" required>
          <input type="text" name="zipcode" placeholder="Zip Code" class="w-1/4 p-2 border rounded-md" required>
        </div>
      </div>

      <!-- Contact Information -->
      <div class="mb-4">
        <label class="block text-gray-700">Phone Number</label>
        <input type="tel" name="phone_number" placeholder="Phone Number" class="w-full p-2 border rounded-md" required>
      </div>

      <div class="mb-4">
        <label class="block text-gray-700">Email</label>
        <input type="email" name="email" placeholder="Email" class="w-full p-2 border rounded-md" required>
      </div>

      <!-- Arrival Date and Time -->
      <div class="mb-4">
        <label class="block text-gray-700">Arrival Date and Time</label>
        <div class="flex space-x-4">
          <input type="date" name="arrival_date" class="w-1/2 p-2 border rounded-md" required>
          <input type="time" name="arrival_time" class="w-1/2 p-2 border rounded-md" required>
        </div>
      </div>

      <!-- Staying Days -->
      <div class="mb-4">
        <label class="block text-gray-700">Staying Days</label>
        <input type="number" name="nodaysStaying" placeholder="Number of Staying Days" class="w-full p-2 border rounded-md" min="1" required>
      </div>

      <!-- Number of Adults and Kids -->
      <div class="mb-4">
        <label class="block text-gray-700">Guests</label>
        <div class="flex space-x-4">
          <input type="number" name="adults" placeholder="Number of Adults" class="w-1/2 p-2 border rounded-md" min="1" required>
          <input type="number" name="kids" placeholder="Number of Kids" class="w-1/2 p-2 border rounded-md" min="0">
        </div>
      </div>

      <!-- Payment Method -->
      <div class="mb-4">
        <label class="block text-gray-700">Payment Method</label>
        <select name="payment_method" class="w-full p-2 border rounded-md">
          <option value="cheque">Cheque</option>
          <option value="paypal">PayPal</option>
        </select>
      </div>

      <!-- Room Type and Bed Type -->
      <div class="mb-4">
        <label class="block text-gray-700">Room Preferences</label>
        <div class="flex space-x-4">
          <select name="room_type" class="w-1/2 p-2 border rounded-md">
            <option value="ac">AC Room</option>
            <option value="non_ac">Non-AC Room</option>
          </select>
          <select name="bed_type" class="w-1/2 p-2 border rounded-md">
            <option value="single">Single Bed</option>
            <option value="double">Double Bed</option>
            <option value="queen">Queen Bed</option>
            <option value="king">King Bed</option>
          </select>
        </div>
      </div>

      <!-- Additional Notes -->
      <div class="mb-4">
        <label class="block text-gray-700">Additional Notes</label>
        <textarea name="notes" rows="4" placeholder="Additional requests or information" class="w-full p-2 border rounded-md"></textarea>
      </div>

      <!-- Submit Button -->
      <div class="text-center">
        <a href="payment.jsp" type="submit" class="w-full bg-blue-500 text-white p-2 rounded-md">Proceed with payment</a>
      </div>

    </form>
  </div>

</body>
</html>
