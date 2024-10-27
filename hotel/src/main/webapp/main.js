// Get elements
const menuBtn = document.getElementById("menu-btn");
const navLinks = document.getElementById("nav-links");
const menuBtnIcon = menuBtn.querySelector("i");

// Event listener for opening/closing the menu
menuBtn.addEventListener("click", function() {
  navLinks.classList.toggle("open");

  // Change icon based on the menu state
  const isOpen = navLinks.classList.contains("open");
  menuBtnIcon.setAttribute("class", isOpen ? "ri-close-line" : "ri-menu-line");
});

// Event listener to close the menu when a link is clicked
navLinks.addEventListener("click", function() {
  navLinks.classList.remove("open");
  menuBtnIcon.setAttribute("class", "ri-menu-line");
});

// ScrollReveal options
const scrollRevealOption = {
  distance: "50px",
  origin: "bottom",
  duration: 1000,
};

// ScrollReveal animations
ScrollReveal().reveal(".header__container p", {
  distance: scrollRevealOption.distance,
  origin: scrollRevealOption.origin,
  duration: scrollRevealOption.duration,
});

ScrollReveal().reveal(".header__container h1", {
  distance: scrollRevealOption.distance,
  origin: scrollRevealOption.origin,
  duration: scrollRevealOption.duration,
  delay: 500,
});

// About container animations
ScrollReveal().reveal(".about__image img", {
  distance: scrollRevealOption.distance,
  origin: "left",
  duration: scrollRevealOption.duration,
});

ScrollReveal().reveal(".about__content .section__subheader", {
  distance: scrollRevealOption.distance,
  origin: scrollRevealOption.origin,
  duration: scrollRevealOption.duration,
  delay: 500,
});

ScrollReveal().reveal(".about__content .section__header", {
  distance: scrollRevealOption.distance,
  origin: scrollRevealOption.origin,
  duration: scrollRevealOption.duration,
  delay: 1000,
});

ScrollReveal().reveal(".about__content .section__description", {
  distance: scrollRevealOption.distance,
  origin: scrollRevealOption.origin,
  duration: scrollRevealOption.duration,
  delay: 1500,
});

ScrollReveal().reveal(".about__btn", {
  distance: scrollRevealOption.distance,
  origin: scrollRevealOption.origin,
  duration: scrollRevealOption.duration,
  delay: 2000,
});

// Room container animations
ScrollReveal().reveal(".room__card", {
  distance: scrollRevealOption.distance,
  origin: scrollRevealOption.origin,
  duration: scrollRevealOption.duration,
  interval: 500,
});

// Service container animations
ScrollReveal().reveal(".service__list li", {
  distance: scrollRevealOption.distance,
  origin: "right",
  duration: scrollRevealOption.duration,
  interval: 500,
});
