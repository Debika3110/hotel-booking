<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link rel="stylesheet" href="login.css">
</head>
<body>
	<a class="btn" href="index.jsp">Back</a>
    <div class="container">
    	
        <div class="orangeBG">
            <div class="box signin">
                <h2>Already have an account?</h2>
                <button class="signinbtn">Sign In</button>
            </div>
            <div class="box signup">
                <h2>Create an account?</h2>
                <button class="signupbtn">Register</button>
            </div>
        </div>
        <div class="form-box">
            <div class="form signinform">
                <form>
                    <h3>Sign In</h3>
                    <input type="text" placeholder="Username">
                    <input type="password" placeholder="Password">
                    <input type="submit" value="Sign In">
                    <a href="#">Forgot Password?</a>
                </form>
            </div>
            <div class="form signupform">
                <form>
                    <h3>Sign Up</h3>
                    <input type="text" placeholder="Username">
                    <input type="email" placeholder="Email Address">
                    <input type="password" placeholder="Password">
                    <input type="password" placeholder=" Confirm Password">
                    
                    <input type="submit" value="Sign Up" >
                </form>
            </div>
        </div>
    </div>
    <script>
        const signinbtn = document.querySelector('.signinbtn');
        const signupbtn = document.querySelector('.signupbtn');
        const formbox = document.querySelector('.form-box');
        const body = document.querySelector('body');


        signupbtn.onclick = function(){
            formbox.classList.add('active');
            body.classList.add('active');
        }

        signinbtn.onclick = function(){
            formbox.classList.remove('active');
            body.classList.remove('active');
        }


    </script>
    
</body>
</html>