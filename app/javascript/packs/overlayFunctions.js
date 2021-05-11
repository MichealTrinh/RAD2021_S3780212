function menuOverlay() {
  var element = document.getElementById("menuOverlay")
  element.classList.toggle("hidden");
  element.classList.toggle("overlay");
}

function cartOverlay() {
  var element = document.getElementById("cartOverlay")
  element.classList.toggle("hidden");
  element.classList.toggle("overlay");
}

function searchOverlay() {
  var element = document.getElementById("searchOverlay")
  element.classList.toggle("hidden");
  element.classList.toggle("overlay");
}

function createListeners() {
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

window.onload(createListeners());