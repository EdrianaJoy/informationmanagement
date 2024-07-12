function submitForm() {
   const formData = {};

   const pageData = JSON.parse(sessionStorage.getItem(`formPage${1}`)); //should be a loop that iterates through each form per page
   Object.assign(formData, pageData);


   // Send data via Fetch API
   fetch('/api/createapp', {
      method: 'POST',
      headers: {
         'Content-Type': 'application/json'
      },
      body: JSON.stringify(formData)
   })
      .then(response => response.json())
      .then(data => {
         console.log('Success:', data);
         // Clear sessionStorage if needed
         sessionStorage.clear();
      })
      .catch((error) => {
         console.error('Error:', error);
      });
}

document.getElementById('submit-btn').addEventListener('click', submitForm);