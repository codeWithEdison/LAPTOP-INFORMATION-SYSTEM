document.addEventListener("DOMContentLoaded", function() {
    const registerLink = document.querySelector(".register-link");
    const rightContent = document.getElementById("right-content");
    
    registerLink.addEventListener("click", function(event) {
      event.preventDefault(); // Prevent default link behavior
      
      // Replace the content of rightContent with the registration form
      rightContent.innerHTML = `
        <form id="registration-form">
          <label for="fullname">Full Name:</label>
          <input type="text" id="fullname" name="fullname" required>
          
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" >
          
          <label for="regno">Reg No:</label>
          <input type="number" id="regno" name="regno" required>
          <label for="tel">Tel:</label>
          <input type="tel" id="tel" name="tel" required>
          <label for="comptype">Computer Type:</label>
          <input type="text" id="comptype" name="comptype" required>
          <label for="sn">Serial Number:</label>
          <input type="text" id="sn" name="sn" required>
          <button type="submit">Register</button>
        </form>
      `;
    });
  });
  