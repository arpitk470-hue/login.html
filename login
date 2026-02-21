<!DOCTYPE html>
<html>
<head>
  <title>ERP Login</title>
</head>
<body>

<h2>Spinning ERP Login</h2>

<input type="email" id="email" placeholder="Enter Email"><br><br>
<input type="password" id="password" placeholder="Enter Password"><br><br>
<button onclick="loginUser()">Login</button>

<script type="module">
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.12.0/firebase-app.js";
import { getAuth, signInWithEmailAndPassword }
from "https://www.gstatic.com/firebasejs/10.12.0/firebase-auth.js";

const firebaseConfig = {
  apiKey: "YOUR-API-KEY",
  authDomain: "YOUR-DOMAIN",
  projectId: "YOUR-PROJECT-ID",
  appId: "YOUR-APP-ID"
};

const app = initializeApp(firebaseConfig);
const auth = getAuth(app);

window.loginUser = async function() {
  const email = document.getElementById("email").value;
  const password = document.getElementById("password").value;

  try {
    await signInWithEmailAndPassword(auth, email, password);
    alert("Login Successful");
    window.location.href = "index.html";
  } catch (error) {
    alert(error.message);
  }
};
</script>

</body>
</html>
