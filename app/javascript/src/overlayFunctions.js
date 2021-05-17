import $ from 'jquery';

function menuOverlay() {
  var element = document.getElementById("menuOverlay");
  element.classList.toggle("hidden");
  element.classList.toggle("overlay");
}

function cartOverlay() {
  var element = document.getElementById("cartOverlay");
  element.classList.toggle("hidden");
  element.classList.toggle("overlay");
}

function searchOverlay() {
  var element = document.getElementById("searchOverlay");
  element.classList.toggle("hidden");
  element.classList.toggle("overlay");
}
function menuButtonListener() {
window.addEventListener("load", () => {
    const links = document.querySelectorAll(
      "button[menuOverlay]"
    );
    links.forEach((element) => {
      element.addEventListener("click", (event) => {
        event.preventDefault();
        menuOverlay();
      });
    });
  });
}
function cartButtonListener() {
  window.addEventListener("load", () => {
    const links = document.querySelectorAll(
      "button[cartOverlay]"
    );
    links.forEach((element) => {
      element.addEventListener("click", (event) => {
        event.preventDefault();
        cartOverlay();
      });
    });
  });
}
function searchButtonListener() {
  window.addEventListener("load", () => {
    const links = document.querySelectorAll(
      "button[searchOverlay]"
    );
    links.forEach((element) => {
      element.addEventListener("click", (event) => {
        event.preventDefault();
        searchOverlay();
      });
    });
  });
}


$(document).ready(menuButtonListener());
$(document).ready(cartButtonListener());
$(document).ready(searchButtonListener());

window.randomProductSaveLabel = function() {
  document.write("<label class='randomProduct-saveLabel'>SAVED</label>");
};
