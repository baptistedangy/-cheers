const pageScrolling = () => {
  const button = document.querySelector("#scrolling");
  button.addEventListener('click', (event) => {
    event.preventDefault();
    const smooth = event.currentTarget.getAttribute('href');
    const target = document.querySelector(smooth);
    console.log(target.getBoundingClientRect().top)


    target.scrollTo({
      top: target.getBoundingClientRect().top,
      left: 0,
      behavior: 'smooth',
    })
  });
};

export { pageScrolling };

