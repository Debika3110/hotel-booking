<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard - Booked Rooms</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">

<div class="container mx-auto py-8">
  <h2 class="text-3xl font-bold text-gray-800 mb-6 text-center">Booked Rooms Dashboard</h2>

  <!-- Reservation Table -->
  <div class="bg-white shadow-md rounded-lg overflow-x-auto">
    <table class="min-w-full bg-white border">
      <thead class="bg-gray-200">
        <tr>
          <th class="py-2 px-4 border-b">Full Name</th>
          <th class="py-2 px-4 border-b">Email</th>
          <th class="py-2 px-4 border-b">Phone</th>
          <th class="py-2 px-4 border-b">Arrival Date</th>
          <th class="py-2 px-4 border-b">Staying Days</th>
          <th class="py-2 px-4 border-b">Room Type</th>
          <th class="py-2 px-4 border-b">Bed Type</th>
          <th class="py-2 px-4 border-b">Adults</th>
          <th class="py-2 px-4 border-b">Kids</th>
          <th class="py-2 px-4 border-b">Payment Method</th>
          <th class="py-2 px-4 border-b">Additional Notes</th>
        </tr>
      </thead>
      <tbody>

        <%
          String dbURL = "jdbc:mysql://localhost:3306/project5";
          String dbUser = "root";
          String dbPass = "Debika@123";

          Connection conn = null;
          Statement stmt = null;
          ResultSet rs = null;

          try {
              Class.forName("com.mysql.cj.jdbc.Driver");
              conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
              stmt = conn.createStatement();

              // Execute SQL query to fetch reservations
              String sql = "SELECT * FROM reservations ORDER BY created_at DESC";
              rs = stmt.executeQuery(sql);

              // Iterate through the result set and display each reservation
              while (rs.next()) {
                  String fullName = rs.getString("first_name") + " " + rs.getString("last_name");
                  String email = rs.getString("email");
                  String phone = rs.getString("phone_number");
                  String arrivalDate = rs.getString("arrival_date") + " " + rs.getString("arrival_time");
                  int stayingDays = rs.getInt("nodaysStaying");
                  String roomType = rs.getString("room_type");
                  String bedType = rs.getString("bed_type");
                  int adults = rs.getInt("adults");
                  int kids = rs.getInt("kids");
                  String paymentMethod = rs.getString("payment_method");
                  String notes = rs.getString("notes");
        %>

        <tr>
          <td class="py-2 px-4 border-b text-center"><%= fullName != null ? fullName : "N/A" %></td>
          <td class="py-2 px-4 border-b text-center"><%= email != null ? email : "N/A" %></td>
          <td class="py-2 px-4 border-b text-center"><%= phone != null ? phone : "N/A" %></td>
          <td class="py-2 px-4 border-b text-center"><%= arrivalDate != null ? arrivalDate : "N/A" %></td>
          <td class="py-2 px-4 border-b text-center"><%= stayingDays %></td>
          <td class="py-2 px-4 border-b text-center"><%= roomType != null ? roomType : "N/A" %></td>
          <td class="py-2 px-4 border-b text-center"><%= bedType != null ? bedType : "N/A" %></td>
          <td class="py-2 px-4 border-b text-center"><%= adults %></td>
          <td class="py-2 px-4 border-b text-center"><%= kids %></td>
          <td class="py-2 px-4 border-b text-center"><%= paymentMethod != null ? paymentMethod : "N/A" %></td>
          <td class="py-2 px-4 border-b text-center"><%= notes != null ? notes : "N/A" %></td>
        </tr>

        <%
              }
          } catch (Exception e) {
              out.println("<tr><td colspan='11' class='py-2 px-4 border-b text-center text-red-500'>Error: " + e.getMessage() + "</td></tr>");
              e.printStackTrace();
          } finally {
              if (rs != null) try { rs.close(); } catch (Exception ignore) {}
              if (stmt != null) try { stmt.close(); } catch (Exception ignore) {}
              if (conn != null) try { conn.close(); } catch (Exception ignore) {}
          }
        %>

      </tbody>
    </table>
  </div>
</div>

</body>
</html>
