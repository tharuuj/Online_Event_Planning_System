/**
 * 
 */
function validateForm() {
    let valFirstName = document.forms["formRegister"]["first_name"].value;
    let valLastNameame = document.forms["formRegister"]["last_name"].value;
    let valEmail = document.forms["formRegister"]["email"].value;
    let valPhone = document.forms["formRegister"]["phone"].value;
    let valAddress = document.forms["formRegister"]["address"].value;
    let valEventType = document.forms["formRegister"]["event_type"].value;
    let valEventName = document.forms["formRegister"]["event_name"].value;
    let valDateNTime = document.forms["formRegister"]["event_date"].value;
    let valArea = document.forms["formRegister"]["area"].value;
    let valGuestCount = document.forms["formRegister"]["guest_count"].value;

    // Clear any previous error messages
    document.getElementById("error-message").textContent = "";

    if (valFirstName == "") {
        displayErrorMessage("Your first name must be filled out!");
        return false;
    } else if (valLastNameame == "") {
        displayErrorMessage("Your last name must be filled out!");
        return false;
    } else if (valEmail == "") {
        displayErrorMessage("Your email must be filled out!");
        return false;
    } else if (valPhone == "" || !valPhone.match(/^\d{10}$/)) {
        displayErrorMessage("Please enter a valid 10-digit phone number.");
        return false;
    } else if (valAddress == "") {
        displayErrorMessage("Your address must be filled out!");
        return false;
    } else if (valEventType == "") {
        displayErrorMessage("Event type must be filled out!");
        return false;
    } else if (valEventName == "") {
        displayErrorMessage("Event name must be filled out!");
        return false;
    } else if (valDateNTime == "") {
        displayErrorMessage("Date and time must be filled out!");
        return false;
    } else if (valArea == "") {
        displayErrorMessage("Please select the area of the event!");
        return false;
    } else if (valGuestCount == "") {
        displayErrorMessage("Please select the guest count!");
        return false;
    } else {
        alert("The form was submitted.");
    }
}

function displayErrorMessage(message) {
    document.getElementById("error-message").textContent = message;
}
