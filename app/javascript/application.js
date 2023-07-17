// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
document.addEventListener("turbolinks:load", function() {
    var flashMessages = document.getElementById('flash-messages');
    if (flashMessages) {
      setTimeout(function() {
        flashMessages.style.display = 'none';
      }, 5000); // 5000 milliseconds = 5 seconds
    }
  });
