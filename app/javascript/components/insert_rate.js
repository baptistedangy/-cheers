const insertRate = () => {
  const ratingLinks = document.querySelectorAll('.rate-card-link');
  ratingLinks.forEach((link) => {
    link.addEventListener('click', (event) => {
      event.preventDefault();
      const currentLink = event.currentTarget;
      const url = currentLink.href;
      fetch(url, {
        headers: {accept: "application/json"}
      }).then(response => response.json())
      .then((data) => {
        const container = document.getElementById('rate-show-container');
        container.innerHTML = data.html;
      })
    })
  });
 };

 export { insertRate };

