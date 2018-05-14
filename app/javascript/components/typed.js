import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Find the best place for your event !", "Rent your place and earn money !"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
