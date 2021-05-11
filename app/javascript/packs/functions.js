console.log("hello");

function save_product(name) {
  if (window.localStorage.getItem(name) != null) {
    window.localStorage.removeItem(name);
  } else {
    window.localStorage.setItem(name, name);
  }
  for (var i = 0; i < window.localStorage.length; i++) {
    console.log(i.toString() + " " + window.localStorage.getItem(window.localStorage.key(i)));
  }
  window.location.href = ""
}

window.addEventListener("load", () => {
  const links = document.querySelectorAll(
    "button[save_product]"
  );
  console.log("listener");
  links.forEach((element) => {
    element.addEventListener("click", (event) => {
      event.preventDefault();
      var name = element.value;
      save_product(name);
    });
  });
});


function clear_storage() {
  window.localStorage.clear();
}


window.addEventListener("load", () => {
  const links = document.querySelectorAll(
    "button[clear_storage]"
  );
  console.log("listener");
  links.forEach((element) => {
    element.addEventListener("click", (event) => {
      event.preventDefault();
      clear_storage();
    });
  });
});