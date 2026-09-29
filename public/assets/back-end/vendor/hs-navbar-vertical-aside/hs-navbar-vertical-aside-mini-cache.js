const isMini = window.localStorage.getItem('hs-navbar-vertical-aside-mini') === null ? false : window.localStorage.getItem('hs-navbar-vertical-aside-mini');

if (isMini && isMini !== 'false') {
  const body = document.getElementsByTagName('body')[0] || document.body;
  if (body) {
    body.classList.add('navbar-vertical-aside-mini-mode');
  } else {
    document.addEventListener('DOMContentLoaded', function () {
      if (document.body) {
        document.body.classList.add('navbar-vertical-aside-mini-mode');
      }
    });
  }
}