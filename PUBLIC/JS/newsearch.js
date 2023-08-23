// JavaScript for switching content sections


// Show the search result or add computer form based on user interaction
const searchButton = document.getElementById("search-button");
const searchResultSection = document.getElementById("search-result");
const addComputerForm = document.getElementById("add-computer-form");

searchButton.addEventListener("click", () => {
  const searchInput = document.getElementById("search-input").value;
  // Perform your search logic here and display the result in searchResultSection
  const searchResult = ` <h3 class="search-head"> search Result</h3>
  <p>FULL NAME: <SPan class="user-data" id="fullname"> Edison UWIHANGANYE</SPan></p>
  <p>REG NO: <SPan class="user-data" id="regno">222013008</SPan></p>
  <p>TEL: <SPan class="user-data" id="tel"> +250788240303</SPan></p>
  <p>COMPUTER TYPE: <SPan class="user-data" id="laptype">hp</SPan></p>  
   <p> SERIAL NUMBER: <span class="user-data">${searchInput} </span></p>`;
  searchResultSection.innerHTML = searchResult;
  searchResultSection.style.display = "block";
  addComputerForm.style.display = "none";
});

// Show the add computer form when "Add New Computer" link is clicked
const addComputerLink = document.querySelector(".main-link");
addComputerLink.addEventListener("click", () => {
  searchResultSection.style.display = "none";
  addComputerForm.style.display = "block";
});

// Show the logout popup when the "Logout" button is clicked
const logoutlink = document.getElementById("logout-link");
const logoutPopup = document.getElementById("logout-popup");
const cancelButton = document.getElementById("cancel-button");
const confirmLogoutButton = document.getElementById("confirm-logout-button");

logoutlink.addEventListener("click", () => {
  logoutPopup.style.display = "block";
});

// Close the logout popup when the "Cancel" button is clicked
cancelButton.addEventListener("click", () => {
  logoutPopup.style.display = "none";
});

// Perform logout when the "Logout" button inside the popup is clicked
confirmLogoutButton.addEventListener("click", () => {
  // Perform your logout logic here (e.g., redirect to login page, clear session, etc.)
  console.log("Performing logout...");

  // After performing logout, you can redirect the user or take appropriate action
  
  window.location.href = "../../index.html"; // Redirect to the login page
});

// Set dynamic copyright year
const currentYear = new Date().getFullYear();
const copyrightElement = document.getElementById("copyright");
copyrightElement.textContent = `© ${currentYear} UR-LIS`;