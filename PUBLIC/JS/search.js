const students ={
  0:[
    {'Names':'IRADUKNDA Bonheur'},
    {'regNumber':'222005615'},
    {'phone':'0787799286'},
    {'computer':'HP'},
    {'serialNumber':'ac234bb4'}
  ]

}
let data = students[0];
let names = data[0]['Names'];
let regNumber = data[1]['regNumber'];
let phone = data[2]['phone'];
let computer = data[3]['computer'];
let serialNumber = data[4]['serialNumber'];


document.addEventListener("DOMContentLoaded", function() {
    const rightContent = document.getElementById("right-content");
    const originalContent = rightContent.innerHTML; // Store the original content
    
    // Add event listener for the "Search" button
    const searchButton = document.querySelector(".search-button");
    searchButton.addEventListener("click", function(event) {
      event.preventDefault(); // Prevent default button behavior
      
      // Clear existing content and load user data
      rightContent.innerHTML = ""; // Clear existing content
      
      const userData = `
        <p>FULL NAME: <span class="user-data" id="fullname">${names}</span></p>
        <p>REG NO: <span class="user-data" id="regno">${regNumber}</span></p>
        <p>TEL: <span class="user-data" id="tel">${phone}</span></p>
        <p>COMPUTER TYPE: <span class="user-data" id="laptype">${computer}</span></p>
        <p>SERIAL NUMBER: <span class="user-data" id="sn">${serialNumber}</span></p>
        <button class="ok-button">ok</button>
      `;
      
      rightContent.innerHTML = userData;
    });
  });
  