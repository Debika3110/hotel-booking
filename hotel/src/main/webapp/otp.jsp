<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=Edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>OTP VALIDATOR</title>
  
  <!-- Custom Styles -->
  <link rel="stylesheet" href="otp.css">
</head>
<body>
	<a class="btnnn" href="index.jsp">Back</a>
  <div class="container">
    <section class="header">
      <h1>Verification</h1>
      <img src="assets/profile.png" width="100px" alt="Profile Image">
    </section>
    <section class="input">
      <p>Enter the OTP you received</p>
      <div class="inputs">
        <input type="number" maxlength="1" />
        <input type="number" maxlength="1" disabled />
        <input type="number" maxlength="1" disabled />
        <input type="number" maxlength="1" disabled />
      </div>
    </section>
    <section class="btn">
      <button disabled>Verify</button>
    </section>
  </div>

  <script>
    const inputs = document.querySelectorAll("input"),
          button = document.querySelector("button");

    inputs.forEach((input, index1) => {
      input.addEventListener("keyup", (e) => {
        const currentInput = input,
              nextInput = input.nextElementSibling,
              prevInput = input.previousElementSibling;

        // Allow only single digit input
        if (currentInput.value.length > 1) {
          currentInput.value = "";
          return;
        }

        // Move to the next input if filled
        if (nextInput && nextInput.hasAttribute("disabled") && currentInput.value !== "") {
          nextInput.removeAttribute("disabled");
          nextInput.focus();
        }

        // Handle backspace
        if (e.key === "Backspace") {
          inputs.forEach((input, index2) => {
            if (index1 <= index2 && prevInput) {
              input.setAttribute("disabled", true);
              input.value = "";
              prevInput.focus();
            }
          });
        }

        // Enable button if all inputs are filled
        if (!inputs[3].disabled && inputs[3].value !== "") {
          button.classList.add("active");
          return;
        }
        button.classList.remove("active");
      });
    });

    // Focus on the first input when the page loads
    window.addEventListener("load", () => inputs[0].focus());
  </script>
</body>
</html>
    