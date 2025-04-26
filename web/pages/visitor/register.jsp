<%-- 
    Document   : register
    Created on : 24 Apr 2025, 16:32:27
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> Shopping Login & Registration Form</title>
    <link rel="icon" type="image/icon" href="img/favicon.svg" />
    <link rel="stylesheet" href="style.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/remixicon@3.2.0/fonts/remixicon.css"
      rel="stylesheet"
    />
    
    <!--Style.css  -->
    <style>
        * {
          box-sizing: border-box;
          padding: 0;
          margin: 0;
          font-family: "Roboto", sans-serif;
        }

        :root {
          --primary-color: #ff8a65;
          --secondary-color: #ff7043;
          --bg: #f5f7f8;
          --card-bg: #eceff1;
          --input-color: #b0bec5;
          --primary-text-color: #263238;
          --secondary-text-color: #607d8b;
          --button-color: #dbe2e5;
          --button-color-hover: #c4ced4;
          --red: #f44336;
        }

        .dark-mode {
          --primary-color: #d95f39;
          --secondary-color: #ff7043;
          --bg: #13191c;
          --card-bg: #263238;
          --input-color: #455a64;
          --primary-text-color: #eceff1;
          --secondary-text-color: #90a4ae;
          --button-color: #29353b;
          --button-color-hover: #37474f;
        }

        ::selection {
          background-color: var(--primary-color);
          color: var(--bg);
        }

        body {
          background-color: var(--bg);
          overflow-x: hidden;
        }

        /* Navbar */
        nav {
          height: 85px;
          padding: 20px;
          margin-bottom: 10px;
          display: flex;
          justify-content: space-between;
        }

        nav h1 {
          font-size: 2rem;
          color: var(--primary-text-color);
          align-self: center;
        }

        nav .link-group {
          display: flex;
          align-items: center;
          justify-content: center;
          gap: 10px;
        }

        nav .link-group a {
          text-decoration: none;
          cursor: pointer;
          font-size: 3rem;
          color: var(--primary-text-color);
        }

        nav .link-group a:hover {
          color: var(--secondary-text-color);
          transition: color 0.3s;
        }

        /* Reusable Style */
        section {
          display: flex;
          margin: 50px 0;
          flex-direction: column;
          align-items: center;
          justify-content: center;
        }

        .card {
          width: 500px;
          border-radius: 10px;
          background-color: var(--card-bg);
          padding: 75px;
          display: flex;
          flex-direction: column;
          align-items: center;
        }

        h1 {
          font-size: 3rem;
          color: var(--primary-text-color);
        }

        .input-group {
          margin-top: 3rem;
          display: flex;
          flex-direction: column;
          justify-content: center;
          gap: 5px;
        }

        .input-box {
          position: relative;
          width: 350px;
        }

        .input-box .input {
          font-size: 16px;
          color: var(--primary-text-color);
          user-select: none;
          width: 100%;
          height: 50px;
          padding: 15px;
          outline: none;
          border-radius: 10px;
          background-color: var(--card-bg);
          border: 1px solid var(--input-color);
        }

        .input-box .input-label {
          background: transparent;
          position: relative;
          z-index: 5;
          top: -34px;
          left: 16px;
          font-size: 16px;
          color: var(--input-color);
          user-select: none;
          cursor: text;
          transition: 0.3s;
        }

        .input-box + span {
          width: 350px;
          display: none;
          margin-bottom: 20px;
        }

        .input-box + span .mark {
          display: inline-block;
          font-size: 16px;
          text-align: center;
          color: var(--card-bg);
          width: 16px;
          height: 16px;
          border-radius: 50%;
          background-color: var(--red);
          user-select: none;
        }

        .input-box + span .error-text {
          display: inline;
          font-size: 16px;
          color: var(--red);
        }

        .input:focus {
          border: 1px solid var(--primary-color);
          transition: border 0.3s;
        }

        .input:focus ~ .input-label,
        .input:not(:placeholder-shown) ~ .input-label {
          background: var(--card-bg);
          color: var(--secondary-text-color);
          padding: 5px;
          top: -60px;
          left: 10px;
          z-index: 5;
          font-size: 12px;
          cursor: default;
        }

        .input:focus ~ .input-label {
          color: var(--primary-color);
        }

        .check-element {
          width: 350px;
          margin-bottom: 3rem;
          user-select: none;
          display: flex;
          align-items: center;
          gap: 5px;
          cursor: pointer;
        }

        input[type="checkbox"] {
          appearance: none;
          -webkit-appearance: none;
          position: relative;
          top: -1.5px;
          height: 16px;
          width: 16px;
          background-color: var(--input-color);
          border-radius: 2px;
          user-select: none;
          cursor: pointer;
        }

        input[type="checkbox"]:after {
          display: none;
          color: white;
          position: absolute;
          content: "\2714";
          top: -2px;
          left: 3px;
        }

        input[type="checkbox"]:checked {
          background-color: var(--primary-color);
        }

        input[type="checkbox"]:checked:after {
          display: block;
        }

        .check-element {
          margin-top: 5px;
        }

        .check-element label {
          font-size: 16px;
          color: var(--input-color);
          cursor: pointer;
        }

        .btn-group {
          display: flex;
          flex-direction: column;
          gap: 15px;
        }

        .btn {
          font-size: 16px;
          color: #f5f7f8;
          width: 350px;
          height: 50px;
          background-color: var(--primary-color);
          border-radius: 10px;
          border: none;
          user-select: none;
        }

        .btn:hover {
          background-color: var(--secondary-color);
          cursor: pointer;
          transition: background-color 0.3s ease;
        }

        .btn:disabled {
          opacity: 0.5;
          cursor: not-allowed;
        }

        .btn:disabled:hover {
          background-color: var(--primary-color);
        }

        .cancel-btn {
          color: var(--primary-text-color);
          background-color: var(--button-color);
        }

        .cancel-btn:hover {
          background-color: var(--button-color-hover);
        }

        .under-card {
          margin: 1rem;
          display: flex;
          flex-direction: row;
          gap: 5px;
        }

        .under-card p {
          color: var(--secondary-text-color);
        }

        .under-card button {
          cursor: pointer;
          text-decoration: none;
          font-size: 16px;
          color: var(--primary-color);
          outline: none;
          border: none;
          background-color: transparent;
        }

        .under-card button:hover {
          color: var(--secondary-color);
        }

        /* Change Password card */
        #change_password_card h1 {
          font-size: 2.5rem;
        }

        /* Delete Account and Success card */
        #delete_account_card h1,
        #success_card h1,
        #welcome_card h1 {
          margin-bottom: 100px;
        }

        /* Invalid Input */
        .invalid input {
          border: 1px solid var(--red) !important;
        }

        .invalid label {
          color: var(--red) !important;
        }
    </style>
    
  </head>

  <body>
    <div class="container">
      <!-- Navbar -->
      <nav>
        <h1></h1>
        <div class="link-group">
          <a id="change_theme"><i class="ri-sun-fill"></i></a>

        </div>
      </nav>

      <!-- Login Form -->
      <section class="login-form">
        <div class="card">
          <h1>Login</h1>
          <div class="input-group">
            <div class="username-email-input">
              <div class="input-box">
                <input
                  type="text"
                  id="username_email"
                  class="input"
                  placeholder=" "
                />
                <label for="username_email" class="input-label"
                  >Username or Email</label
                >
              </div>
              <span>
                <p class="mark">!</p>
                <p class="error-text" id="username_email_error"></p>
              </span>
            </div>
            <div class="password-input">
              <div class="input-box">
                <input
                  type="password"
                  id="password"
                  class="input"
                  placeholder=" "
                />
                <label for="password" class="input-label">Password</label>
              </div>
              <span>
                <p class="mark">!</p>
                <p class="error-text" id="password_error"></p>
              </span>
            </div>
          </div>
          <div class="check-element">
            <input type="checkbox" name="remember-check" id="remember_check" />
            <label for="remember_check">Remember me</label>
          </div>
          <button type="submit" id="login_submit" class="btn">LOGIN</button>
        </div>
        <div class="under-card">
          <p>Don't have an account?</p>
          <button id="to_signup">Create</button>
        </div>
      </section>

      <!-- Register Form -->
      <section class="signup-form">
        <div class="card">
          <h1>Sign Up</h1>
          <div class="input-group">
            <div class="username-input">
              <div class="input-box">
                <input
                  type="text"
                  id="username"
                  class="input"
                  placeholder=" "
                  maxlength="25"
                />
                <label for="username" class="input-label">Username</label>
              </div>
              <span>
                <p class="mark">!</p>
                <p class="error-text" id="username_error"></p>
              </span>
            </div>
            <div class="email-input">
              <div class="input-box">
                <input type="text" id="email" class="input" placeholder=" " />
                <label for="email" class="input-label">Email</label>
              </div>
              <span>
                <p class="mark">!</p>
                <p class="error-text" id="email_error"></p>
              </span>
            </div>
            <div class="password-input">
              <div class="input-box">
                <input
                  type="password"
                  id="reg_password"
                  class="input"
                  placeholder=" "
                />
                <label for="reg_password" class="input-label">Password</label>
              </div>
              <span>
                <p class="mark">!</p>
                <p class="error-text" id="reg_password_error"></p>
              </span>
            </div>
            <div class="password-input">
              <div class="input-box">
                <input
                  type="password"
                  id="conreg_password"
                  class="input"
                  placeholder=" "
                />
                <label for="conreg_password" class="input-label"
                  >Confirm Password</label
                >
              </div>
              <span>
                <p class="mark">!</p>
                <p class="error-text" id="conreg_password_error"></p>
              </span>
            </div>
          </div>
          <div class="check-element">
            <input type="checkbox" name="reg-check" id="reg_check" />
            <label for="reg_check"
              >This account can only be used on this device.</label
            >
          </div>
          <button type="submit" id="signup_submit" class="btn" disabled>
            SIGN UP
          </button>
        </div>
        <div class="under-card">
          <p>Already have an account?</p>
          <button id="to_login">Login</button>
        </div>
      </section>

      <!-- Welcome -->
      <section class="welcome-form">
        <div class="card" id="welcome_card">
          <h1>Welcome, <span id="name_output">name</span></h1>
          <div class="btn-group">
            <button id="change_password_btn" class="cancel-btn btn">
              Change Password
            </button>
            <button id="delete_account_btn" class="cancel-btn btn">
              Delete Account
            </button>
            <button id="logout_btn" class="btn">LOGOUT</button>
          </div>
        </div>
      </section>

      <!-- Change Password Form -->
      <section class="change-password-form">
        <div class="card" id="change_password_card">
          <h1>Change Password</h1>
          <div class="input-group">
            <div class="password-input">
              <div class="input-box">
                <input
                  type="password"
                  id="current_password"
                  class="input"
                  placeholder=" "
                />
                <label for="current_password" class="input-label"
                  >Current Password</label
                >
              </div>
              <span>
                <p class="mark">!</p>
                <p class="error-text" id="current_password_error"></p>
              </span>
            </div>
            <div class="password-input">
              <div class="input-box">
                <input
                  type="password"
                  id="change_password"
                  class="input"
                  placeholder=" "
                />
                <label for="change_password" class="input-label"
                  >New Password</label
                >
              </div>
              <span>
                <p class="mark">!</p>
                <p class="error-text" id="change_password_error"></p>
              </span>
            </div>
            <div class="password-input">
              <div class="input-box">
                <input
                  type="password"
                  id="conchange_password"
                  class="input"
                  placeholder=" "
                />
                <label for="conchange_password" class="input-label"
                  >Confirm New Password</label
                >
              </div>
              <span>
                <p class="mark">!</p>
                <p class="error-text" id="conchange_password_error"></p>
              </span>
            </div>
          </div>
          <div class="btn-group">
            <button type="submit" id="change_submit" class="btn">SUBMIT</button>
            <button type="submit" id="change_cancel" class="cancel-btn btn">
              CANCEL
            </button>
          </div>
        </div>
      </section>

      <!-- Delete Account Form -->
      <section class="delete-account-form">
        <div class="card" id="delete_account_card">
          <h1>Delete Account</h1>
          <div class="btn-group">
            <button type="submit" id="delete_confirm" class="btn">
              CONFIRM
            </button>
            <button type="submit" id="delete_cancel" class="cancel-btn btn">
              CANCEL
            </button>
          </div>
        </div>
      </section>

      <!-- Success Form -->
      <section class="success-form">
        <div class="card" id="success_card">
          <h1 id="success_text">Success text</h1>
          <button type="submit" id="success_continue" class="btn">
            CONTINUE
          </button>
        </div>
      </section>
    </div>

    <!-- Script -->
    <script >
        let data = JSON.parse(localStorage.getItem("Account"));
        const remember = localStorage.getItem("Remember");
        let account;

        if (data === null) {
          data = [];
        }

        // Show Card
        const card = document.querySelectorAll("section");
        function showCard(form) {
          card.forEach((element) => {
            if (element.className === form) {
              element.style.display = "";
            } else {
              element.style.display = "none";
            }
          });
        }

        if (remember === null) {
          showCard("login-form");
        } else {
          data.forEach((item) => {
            if (item["username"] === remember) {
              account = item;
            }
          });
          toWelcome();
        }

        // Show Error
        function showError(box, display, error) {
          box.parentElement.classList.add("invalid");
          display.innerHTML = error;
          display.parentElement.style.display = "block";
        }

        function hideError(box, display) {
          box.parentElement.classList.remove("invalid");
          display.innerHTML = "";
          display.parentElement.style.display = "none";
        }

        // Sign Up ---------------------------------------------------------------->
        const regUsername = document.getElementById("username");
        const regEmail = document.getElementById("email");
        const regPassword = document.getElementById("reg_password");
        const regPasswordConfirm = document.getElementById("conreg_password");
        const regCheck = document.getElementById("reg_check");
        const regButton = document.getElementById("signup_submit");

        // Check Username
        const usernameErrorDisplay = document.getElementById("username_error");
        const usernameRegEx = /^[A-Za-z0-9_.]{0,25}$/;
        let rUchk,
          rUchka,
          rUchks = true;

        regUsername.addEventListener("input", () => {
          if (!regUsername.value.match(usernameRegEx)) {
            showError(
              regUsername,
              usernameErrorDisplay,
              "Username can only use letters, number, underscores and periods."
            );
            rUchka = false;
          } else {
            hideError(regUsername, usernameErrorDisplay);
            rUchka = true;
          }
        });

        function checkSameUsername() {
          if (data !== [] && data !== null) {
            data.forEach((item) => {
              if (item["username"] === regUsername.value) {
                rUchks = false;
              }
            });
          }
        }

        function checkUsername() {
          checkSameUsername();
          if (regUsername.value === "") {
            showError(regUsername, usernameErrorDisplay, "Username can't be empty.");
            rUchk = false;
          } else if (!rUchks && rUchka) {
            showError(
              regUsername,
              usernameErrorDisplay,
              "This username has already been taken."
            );
            rUchk = true;
          } else if (!rUchka) {
            rUchk = false;
          } else {
            hideError(regUsername, usernameErrorDisplay);
            rUchk = true;
          }
        }

        // Check Email
        const emailErrorDisplay = document.getElementById("email_error");
        const emailRegEx = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        let rEchk,
          rEchks = true;

        function checkSameEmail() {
          if (data !== []) {
            data.forEach((item) => {
              if (item["email"] === regEmail.value) {
                rEchks = false;
              }
            });
          }
        }

        function checkEmail() {
          checkSameEmail();
          if (regEmail.value === "") {
            showError(regEmail, emailErrorDisplay, "Email can't be empty.");
            rEchk = false;
          } else if (!regEmail.value.match(emailRegEx)) {
            showError(regEmail, emailErrorDisplay, "Invalid email.");
            rEchk = false;
          } else if (!rEchks) {
            showError(
              regEmail,
              emailErrorDisplay,
              "this email has already been taken."
            );
          } else {
            hideError(regEmail, emailErrorDisplay);
            rEchk = true;
          }
        }

        // Check Password
        const passwordErrorDisplay = document.getElementById("reg_password_error");
        let rPchk = true;

        function checkPassword() {
          if (regPassword.value === "") {
            showError(regPassword, passwordErrorDisplay, "Password can't be empty.");
            rPchk = false;
          } else {
            hideError(regPassword, passwordErrorDisplay);
            rPchk = true;
          }
        }

        // Check Password Confirm
        const regPasswordConfirmErrorDisplay = document.getElementById(
          "conreg_password_error"
        );
        let rPCchka,
          rPCchk = true;

        regPasswordConfirm.addEventListener("change", () => {
          if (regPasswordConfirm.value !== regPassword.value) {
            showError(
              regPasswordConfirm,
              regPasswordConfirmErrorDisplay,
              "Passwords do not match."
            );
            rPCchka = false;
          } else {
            hideError(regPasswordConfirm, regPasswordConfirmErrorDisplay);
            rPCchka = true;
          }
        });

        function checkPasswordConfirm() {
          if (regPasswordConfirm.value === "") {
            showError(
              regPasswordConfirm,
              regPasswordConfirmErrorDisplay,
              "Passwords can't be empty."
            );
            rPCchk = false;
          } else if (!rPCchka) {
            rPCchk = false;
          } else {
            rPCchk = true;
            hideError(regPasswordConfirm, regPasswordConfirmErrorDisplay);
          }
        }

        // Checkbox
        regCheck.addEventListener("click", () => {
          if (regCheck.checked === true) {
            regButton.disabled = false;
          } else {
            regButton.disabled = true;
          }
        });

        // Save Data
        function saveData() {
          if (rUchk && rEchk && rPchk && rPCchk) {
            let newAccount = {
              username: regUsername.value,
              email: regEmail.value,
              password: regPassword.value,
            };
            data.push(newAccount);
            localStorage.setItem("Account", JSON.stringify(data));
            clearSignup();
            showCard("login-form");
          } else {
            regPassword.value = "";
            regPasswordConfirm.value = "";
          }
        }

        // Sign Up Click
        regButton.addEventListener("click", async () => {
          await checkUsername();
          await checkEmail();
          await checkPassword();
          await checkPasswordConfirm();
          await saveData();
        });

        // Create Click
        const toLoginButton = document.getElementById("to_login");
        toLoginButton.addEventListener("click", () => {
          showCard("login-form");
          clearSignup();
        });

        // Clear Signup Page
        function clearSignup() {
          regUsername.value = "";
          hideError(regUsername, usernameErrorDisplay);
          regEmail.value = "";
          hideError(regEmail, emailErrorDisplay);
          regPassword.value = "";
          hideError(regPassword, passwordErrorDisplay);
          regPasswordConfirm.value = "";
          hideError(regPasswordConfirm, regPasswordConfirmErrorDisplay);
          regCheck.checked = false;
        }

        // Login ------------------------------------------------------------------>
        const logUsernameOrEmail = document.getElementById("username_email");
        const logPassword = document.getElementById("password");
        const logCheck = document.getElementById("remember_check");
        const logButton = document.getElementById("login_submit");

        // Check Username or Email
        const logUsernameOrEmailErrorDisplay = document.getElementById(
          "username_email_error"
        );
        function getAccout() {
          if (logUsernameOrEmail.value === "") {
            showError(
              logUsernameOrEmail,
              logUsernameOrEmailErrorDisplay,
              "Please enter your username or email."
            );
          } else if (logUsernameOrEmail.value.match(usernameRegEx)) {
            checkLoginAccount("username");
            hideError(logUsernameOrEmail, logUsernameOrEmailErrorDisplay);
          } else if (logUsernameOrEmail.value.match(emailRegEx)) {
            checkLoginAccount("email");
            hideError(logUsernameOrEmail, logUsernameOrEmailErrorDisplay);
          } else {
            showError(
              logUsernameOrEmail,
              logUsernameOrEmailErrorDisplay,
              "Invalid username or email."
            );
          }
        }

        function checkLoginAccount(input) {
          data.forEach((item) => {
            if (item[input] === logUsernameOrEmail.value) {
              account = item;
            }
          });
        }

        // Check Password
        const logPasswordErrorDisplay = document.getElementById("password_error");
        function checkLoginPassword() {
          if (account === undefined) {
            showError(
              logUsernameOrEmail,
              logUsernameOrEmailErrorDisplay,
              "Invalid username or email."
            );
          } else if (account["password"] === logPassword.value) {
            logUsernameOrEmail.value = "";
            logPassword.value = "";
            logCheckbox();
            toWelcome();
            hideError(logPassword, logPasswordErrorDisplay);
          } else {
            showError(logPassword, logPasswordErrorDisplay, "Invalid Password.");
            logPassword.value = "";
          }
        }

        // Checkbox
        function logCheckbox() {
          if (logCheck.checked === true) {
            localStorage.setItem("Remember", account["username"]);
          }
        }

        // Login Click
        logButton.addEventListener("click", async () => {
          await getAccout();
          await checkLoginPassword();
        });

        // Login Click
        const toSignUpButton = document.getElementById("to_signup");
        toSignUpButton.addEventListener("click", () => {
          showCard("signup-form");
          clearLogin();
        });

        // Clear Login Page
        function clearLogin() {
          logUsernameOrEmail.value = "";
          hideError(logUsernameOrEmail, logUsernameOrEmailErrorDisplay);
          logPassword.value = "";
          hideError(logPassword, logPasswordErrorDisplay);
          logCheck.checked = false;
        }

        // Welcome ---------------------------------------------------------------->
        function toWelcome() {
          const nameOutput = document.getElementById("name_output");
          nameOutput.innerHTML = account["username"];
          showCard("welcome-form");
        }

        // Change Password Click
        const changePasswordButton = document.getElementById("change_password_btn");
        changePasswordButton.addEventListener("click", () =>
          showCard("change-password-form")
        );

        // Delete Account Click
        const deleteAccountButton = document.getElementById("delete_account_btn");
        deleteAccountButton.addEventListener("click", () =>
          showCard("delete-account-form")
        );

        // Logout
        const logoutButton = document.getElementById("logout_btn");
        logoutButton.addEventListener("click", () => {
          showCard("login-form");
          localStorage.removeItem("Remember");
        });

        // Change Password -------------------------------------------------------->
        // Check Current Password
        const currentPassword = document.getElementById("current_password");
        const currentPasswordErrorDisplay = document.getElementById(
          "current_password_error"
        );
        let cCPchk;

        function checkCurrentPassword() {
          if (currentPassword.value === "") {
            showError(
              currentPassword,
              currentPasswordErrorDisplay,
              "Password can't be empty."
            );
            cCPchk = false;
          } else if (currentPassword.value !== account.password) {
            showError(currentPassword, currentPasswordErrorDisplay, "Wrong password.");
            currentPassword.value = "";
            cCPchk = false;
          } else {
            hideError(currentPassword, currentPasswordErrorDisplay);
            cCPchk = true;
          }
        }

        // Check New Password
        const changePassword = document.getElementById("change_password");
        const changePasswordErrorDisplay = document.getElementById(
          "change_password_error"
        );
        let cPchk;

        function checkPassword() {
          if (changePassword.value === "") {
            showError(
              changePassword,
              changePasswordErrorDisplay,
              "Password can't be empty."
            );
            cPchk = false;
          } else {
            hideError(changePassword, changePasswordErrorDisplay);
            cPchk = true;
          }
        }

        // Check Password Confirm
        const changePasswordConfirm = document.getElementById("conchange_password");
        const changePasswordConfirmErrorDisplay = document.getElementById(
          "conchange_password_error"
        );
        let cPCchk, cPCchka;

        changePasswordConfirm.addEventListener("change", checkPasswordConfirmOnchange);

        function checkPasswordConfirmOnchange() {
          if (changePasswordConfirm.value !== changePassword.value) {
            showError(
              changePasswordConfirm,
              changePasswordConfirmErrorDisplay,
              "Passwords do not match."
            );
            cPCchka = false;
          } else {
            hideError(changePasswordConfirm, changePasswordConfirmErrorDisplay);
            cPCchka = true;
          }
        }

        function checkPasswordConfirm() {
          checkPasswordConfirmOnchange();
          if (changePasswordConfirm.value === "") {
            showError(
              changePasswordConfirm,
              changePasswordConfirmErrorDisplay,
              "Passwords can't be empty."
            );
            cPCchk = false;
          } else if (!cPCchka) {
            cPCchk = false;
          } else {
            hideError(changePasswordConfirm, changePasswordConfirmErrorDisplay);
            cPCchk = true;
          }
        }

        // Cancel Click
        const changeCancelButton = document.getElementById("change_cancel");
        changeCancelButton.addEventListener("click", () => {
          showCard("welcome-form");
          clearChangePassword();
        });

        // Save Data
        function saveChange() {
          if (cCPchk && cPchk && cPCchk && cPCchka) {
            (async () => {
              await (() => {
                data = data.filter((item) => item !== account);
              })();
              await (() => {
                account.password = changePassword.value;
              })();
              await data.push(account);
              await localStorage.setItem("Account", JSON.stringify(data));
              await (() => {
                localStorage.removeItem("Remember");
                clearChangePassword();
                toSuccessLink("Change Password Success");
              })();
            })();
          } else {
            currentPassword.value = "";
            changePassword.value = "";
            changePasswordConfirm.value = "";
          }
        }

        // Submit Click
        const changeSubmitButton = document.getElementById("change_submit");
        changeSubmitButton.addEventListener("click", async () => {
          await checkCurrentPassword();
          await checkPassword();
          await checkPasswordConfirm();
          await saveChange();
        });

        // Clear Change Password Page
        function clearChangePassword() {
          currentPassword.value = "";
          hideError(currentPassword, currentPasswordErrorDisplay);
          changePassword.value = "";
          hideError(changePassword, changePasswordErrorDisplay);
          changePasswordConfirm.value = "";
          hideError(changePasswordConfirm, changePasswordConfirmErrorDisplay);
        }

        // Delete Account --------------------------------------------------------->
        // Confirm Click
        const deleteConfirmButton = document.getElementById("delete_confirm");
        deleteConfirmButton.addEventListener("click", async () => {
          await toSuccessLink("Delete Account Success");
          await (() => {
            data = data.filter((item) => item !== account);
          })();
          await localStorage.setItem("Account", JSON.stringify(data));
          await localStorage.removeItem("Remember");
        });

        // Cancel Click
        const deleteAccountCancelButton = document.getElementById("delete_cancel");
        deleteAccountCancelButton.addEventListener("click", () =>
          showCard("welcome-form")
        );

        // Success Card ----------------------------------------------------------->
        const successText = document.getElementById("success_text");

        function toSuccessLink(text) {
          successText.innerHTML = text;
          showCard("success-form");
        }

        // Continue Click
        const successButton = document.getElementById("success_continue");
        successButton.addEventListener("click", () => showCard("login-form"));

        // Change Theme
        const changeTheme = document.getElementById("change_theme");

        changeTheme.addEventListener("click", () => {
          if (document.body.className === "dark-mode") {
            setLightMode();
          } else {
            setDarkMode();
          }
        });

        function setDarkMode() {
          document.body.classList.add("dark-mode");
          changeTheme.innerHTML = '<i class="ri-moon-fill"></i>';
          saveTeme("darkMode");
        }

        function setLightMode() {
          document.body.classList.remove("dark-mode");
          changeTheme.innerHTML = '<i class="ri-sun-fill"></i>';
          saveTeme("lightMode");
        }

        // Save Theme
        function saveTeme(theme) {
          localStorage.setItem("theme", theme);
        }

        // Get Theme
        const theme = localStorage.getItem("theme");

        if (theme === "darkMode") {
          setDarkMode();
        } else if (theme === "lightMode") {
          setLightMode();
        } else if (
          window.matchMedia &&
          window.matchMedia("(prefers-color-scheme: dark)").matches
        ) {
          setDarkMode();
        }

        // Detect Theme
        window
          .matchMedia("(prefers-color-scheme: dark)")
          .addEventListener("change", (event) => {
            if (event.matches) {
              setDarkMode();
            } else {
              setLightMode();
            }
          });
    </script>
  </body>
</html>
