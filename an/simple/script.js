let currentIndex = 0;
const images = document.querySelectorAll('.slider img');
const totalImages = images.length;

function showNextImage() {
    currentIndex = (currentIndex + 1) % totalImages;
    updateSlider();
}

function updateSlider() {
    const slider = document.querySelector('.slider');
    const offset = -currentIndex * 100; // Moving by 100% of the container's width
    slider.style.transform = `translateX(${offset}%)`;
}

// Change image every 3 seconds
setInterval(showNextImage, 3000);
