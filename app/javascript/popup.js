document.addEventListener('DOMContentLoaded', function() {
  const popup = document.getElementById('special-popup');
  const closeBtn = document.getElementById('close-popup');
  const bookingBtn = document.getElementById('booking-btn');


  setTimeout(function() {
    if (popup) {
      popup.style.display = 'block';
    }
  }, 3000);

  if (closeBtn) {
    closeBtn.addEventListener('click', function() {
      popup.style.display = 'none';
    });
  }

  if (bookingBtn) {
    bookingBtn.addEventListener('click', function() {
      alert('Booking button clicked!');
    });
  }
});
