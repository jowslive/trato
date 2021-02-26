import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["networks", "experiences", "internships", "a lot of coffee"],
    typeSpeed: 150,
    cursorChar: ''
  });
}

export { loadDynamicBannerText };