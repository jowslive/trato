import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById("banner-typed-text");

  if (banner) {
    new Typed(banner, {
      strings: ["networks", "experiences", "internships", "a lot of coffee"],
      typeSpeed: 150,
      cursorChar: ''
    });
  }
}

export { loadDynamicBannerText };