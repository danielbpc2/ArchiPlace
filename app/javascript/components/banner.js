import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ['The best architects design your room', 'The best architects design your kitchen', 'The best architects design your bathroom', 'The best architects design your living-room', 'The best architects design your flat'],
    typeSpeed: 40,
    backSpeed: 40,
    smartBackspace: true, // this is a default
    loop: true
  });
}

export { loadDynamicBannerText };




