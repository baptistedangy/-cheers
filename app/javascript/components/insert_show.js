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
			})
		})
	});
};

export { insertShow };
