function validateForm() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    
  
    if (name === "" || email === "" ) {
      alert("All fields are required");
      return false;
    }
  
    // You can add more specific validation logic here
  
    return true;
  }