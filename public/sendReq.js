// // Function to collect all form data and send it via Fetch API
// function submitForm() {

//      const formData = {};
   
//      // Assuming there are 3 pages
     
//      const form = document.getElementById('personal-info-form');
//      Array.from(form.elements).forEach((element) => {
//           if (element.name) {
//                element.value = sessionStorage.getItem(element.name) || '';
//                formData[element.name] = element.value;
//           }
//      });
      
//      // const pageData = JSON.parse(sessionStorage.getItem(`formPage${i}`));

//      // Object.assign(formData, pageData);
   
//      // Send data via Fetch API
//      fetch('/api/createapp', {
//        method: 'POST',
//        headers: {
//          'Content-Type': 'application/json'
//        },
//        body: JSON.stringify(formData)
//      })
//      .then(response => response.json())
//      .then(data => {
//        console.log('Success:', data);
//        // Clear sessionStorage if needed
//        sessionStorage.clear();
//      })
//      .catch((error) => {
//        console.error('Error:', error);
//      });
//    }
   
   // Add event listener to the submit button
//    document.getElementById('submit-btn').addEventListener('click', submitForm);

//    document.getElementById('submit-btn').addEventListener('click', function(event) {
//      console.log('Passed submitform');
//      event.preventDefault(); // Prevent the default form submission
//      submitForm();
//  });



// Function to collect all form data and send it via Fetch API
// function submitForm() {
//      const formData = {};
   
//      // Assuming there are 3 pages
     
//      const pageData = JSON.parse(sessionStorage.getItem(`formPage${1}`));
//      Object.assign(formData, pageData);
     

//      // Send data via Fetch API
//      fetch('/api/createapp', {
//        method: 'POST',
//        headers: {
//          'Content-Type': 'application/json'
//        },
//        body: JSON.stringify(formData)
//      })
//      .then(response => response.json())
//      .then(data => {
//        console.log('Success:', data);
//        // Clear sessionStorage if needed
//        sessionStorage.clear();
//      })
//      .catch((error) => {
//        console.error('Error:', error);
//      });
//    }
   
   // Add event listener to the submit button
//    document.getElementById('submit-btn').addEventListener('click', submitForm);