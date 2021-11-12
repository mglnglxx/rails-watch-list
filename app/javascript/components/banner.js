import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Favorite Movies", "Create your lists"],
    typeSpeed: 25,
    loop: false
  });
}

export { loadDynamicBannerText };
