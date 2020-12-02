const insertShow = () => {
  const cardsLinks = document.querySelectorAll('.wine-card-link');
  cardsLinks.forEach((link) => {
    link.addEventListener('click', (event) => {
      event.preventDefault();
      const currentLink = event.currentTarget;
      const url = currentLink.href;
      fetch(url, {
        headers: {accept: "application/json"}
      }).then(response => response.json())
      .then((data) => {
        const container = document.getElementById('wine-show-container');
        container.innerHTML = data.html;
        const backButton = document.getElementById("back-button")
        backButton.addEventListener('click', (event) => {
          event.preventDefault();
          container.innerHTML ="";
        })
      })
    })
  });
 };

 export { insertShow };

// recupérer les liens des cards et les mettre dans un var
// ecouter le cliq sur chaque lien (for each)
// empecher le lien - event.preventdefault
// recuperer l'url du lien pour construire le fetch

