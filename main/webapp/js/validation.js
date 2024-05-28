
  document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("passenger-form");

    form.addEventListener("submit", function (event) {
      let valid = true;

      // Validate Age
      const ageField = document.getElementById("passenger-age");
      const age = parseInt(ageField.value, 10);
      if (isNaN(age) || age < 0 || age > 120) {
        alert("Age must be between 0 and 120.");
        ageField.focus();
        valid = false;
      }

      // Validate NIC (Sri Lankan NIC format)
      const nicField = document.getElementById("passenger-nic");
      const nicPattern = /^[0-9]{9}[vVxX]$/;
      if (!nicPattern.test(nicField.value)) {
        alert("NIC should be in the Sri Lankan NIC format (e.g., 123456789V).");
        nicField.focus();
        valid = false;
      }

      // Validate Phone Number (10 digits)
      const phoneField = document.getElementById("passenger-phone");
      const phonePattern = /^\d{10}$/;
      if (!phonePattern.test(phoneField.value)) {
        alert("Phone number must be 10 digits.");
        phoneField.focus();
        valid = false;
      }

      if (!valid) {
        event.preventDefault(); // Prevent form submission if validation fails
      }
    });
  });
