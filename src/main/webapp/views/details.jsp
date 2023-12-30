<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
   
   
    <style>
        /* Style the navigation buttons */
.nav-button.active a {
  background-color: #fff;
  color: #67d9d0;
}
    body, h1, form, label, input, button, ul, li, a {
            margin: 0;
            padding: 0;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #218b87;
            color: #fff;
            padding: 10px 20px;
        }

/* Style the navigation bar */
.navbar {
    display: flex;
    justify-content: center;
    background-color: #2cbebc;
    color: #fff;
    padding: 10px 0;
}

/* Style the navigation buttons */
.nav-button {
    background: none;
    border: none;
    margin: 0 10px;
    cursor: pointer;
}

.nav-button a {
    text-decoration: none;
    color: #fff;
    font-weight: bold;
    padding: 10px 15px;
    border-radius: 5px;
    transition: background-color 0.3s, color 0.3s;
}

.nav-button a:hover {
    background-color: #fff;
    color: #67d9d0;
}
/* Style the navigation buttons */
.nav-button.active a {
  background-color: #fff;
  color: #67d9d0;
}

img{
    max-height: 70px;
}
.container{
    text-align: center;
}
h1{
    color:#218b87;
    text-align: center;
}


table {
    width: 90%;
    border-collapse: collapse;
    margin-top: 20px;
    margin-left: auto;
    margin-right: auto;
}

th, td {
    padding: 10px;
    text-align: center;
    }

th {
    background-color: #333;
    color: #fff;
    }

tr {
    background-color: #f2f2f2;
    }
    
footer {
            text-align: center;
            padding: 10px 0;
            background-color: #2cbebc;
            color: #fff;
        } 
.btn {
            position: relative;
            overflow: hidden;
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: transform 0.3s;
        }

.btn::before {
            content: "";
            position: absolute;
            background: rgba(0, 0, 0, 0.3);
            border-radius: 50%;
            transform: scale(0);
            transition: transform 0.3s;
        }

.btn:hover::before {
            transform: scale(4);
        }

.btn:focus::before {
            transform: scale(0);
        }        

    </style>
</head>
<body>
    <header>
        <div class="logo">
            <img src="https://sdfc.mv/images/SDFC_Logo_B.png" alt="Bank Logo">
        </div>
        <nav class="navbar">
            <button class="nav-button"  id="dashbord"><a href="/dashbordl/{accno}">DASHBOARD</a></button>
            <button class="nav-button"  id="aboutUs"><a href="/aboutUs">ABOUT US</a></button>
            <button class="nav-button"  id="detail"><a href="/detail">DETAILS</a></button>
            <button class="nav-button"  id="deposit"><a href="/deposit">DEPOSIT</a></button>
            <button class="nav-button"  id="withdraw"><a href="/withdraw">WITHDRAW</a></button>
            <button class="nav-button"  id="transfer"><a href="/transfer">TRANSFER</a></button>
            <button class="nav-button"  id="closeAccount"><a href="/closeAccount">CLOSE A/C</a></button>
            <button class="nav-button"  id="reOpenAccount"><a href="/reOpenAccount">REOPEN A/C</a></button>
            <button class="nav-button"  id="contact"><a href="/contact">CONTACT US</a></button>
            <button class="nav-button"><a href="/">LOGOUT</a></button>
        </nav>
    </header>

    <!-- ... (rest of the content) ... -->
    <div class="container">
        <h1>Welcome ${balance.name}, to SDFC Bank</h1>
        <p>Your Trusted Banking Partner</p>
    </div>
    <h1>${balance.name} Details</h1>
    
    <form:form method="POST" action="/detailsView">
            <table>
                <tr>
                    <td></td>
                    <td><form:hidden path="accno" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><form:hidden path="name" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><form:hidden path="password" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Check balance" class="btn"></td>
                </tr>
            </table>
        </form:form>
    </div>
    <div>

    </div>
    <footer>
        <p>&copy; 2023 SDFC Bank. All rights reserved.</p>
    </footer>
    <script>
        // Get all the navigation buttons
        const navButtons = document.querySelectorAll('.nav-button');
      
        // Function to remove the 'active' class from all buttons
        function removeActiveClass() {
          navButtons.forEach((btn) => {
            btn.classList.remove('active');
          });
        }
      
        // Add a click event listener to each button
        navButtons.forEach((button) => {
          button.addEventListener('click', (event) => {
            // Remove the 'active' class from all buttons
            removeActiveClass();
      
            // Add the 'active' class to the clicked button
            button.classList.add('active');
          });
      
          // Add mouseout event listener to each button
          button.addEventListener('mouseout', (event) => {
            // Add the 'active' class to the button when the cursor leaves
            button.classList.add('active');
          });
        });
      </script>
      
      
</body>
</html>