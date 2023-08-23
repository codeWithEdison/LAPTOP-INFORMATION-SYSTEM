// JavaScript for switching content sections
// JavaScript for switching content sections
const reportLink = document.getElementById("report-link");
const changeCredentialsLink = document.getElementById("change-credentials-link");
const addUsersLink = document.getElementById("add-users-link"); // Corrected ID
const modifyUsersLink = document.getElementById("modify-users-link"); // Corrected ID

const reportContent = document.getElementById("report-content");
const changeCredentialsContent = document.getElementById("change-credentials-content");
const addUsersContent = document.getElementById("create-user-content"); // Corrected ID
const modifyUsersContent = document.getElementById("modify-user-content"); // Corrected ID

reportLink.addEventListener("click", () => {
  showContent(reportContent);
});

changeCredentialsLink.addEventListener("click", () => {
  showContent(changeCredentialsContent);
});

addUsersLink.addEventListener("click", () => {
  showContent(addUsersContent);
});

modifyUsersLink.addEventListener("click", () => {
  showContent(modifyUsersContent);
});

function showContent(content) {
  const allContentSections = document.querySelectorAll(".content-section");
  allContentSections.forEach(section => {
    section.style.display = "none";
  });
  content.style.display = "block";
}

// Set dynamic copyright year
const currentYear = new Date().getFullYear();
const copyrightElement = document.getElementById("copyright");
copyrightElement.textContent = `© ${currentYear} UR-LIS`;

// JavaScript for switching content sections
// ... Your existing JavaScript code ...

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
  // For example:
  window.location.href = "../index.html"; // Redirect to the login page
});
