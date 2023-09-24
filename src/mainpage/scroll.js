const footer = document.getElementById('footer');
const body = document.body;
function scrollFooter(event) {
    const footerScrollPosition = (body.scrollHeight - window.innerHeight) * (window.scrollY / (body.scrollHeight - window.innerHeight));
    body.scrollTop = footerScrollPosition;
}
window.addEventListener('scroll', showFooter);
body.addEventListener('wheel', scrollFooter);