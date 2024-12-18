
function save_product(name) {
  var link = "";
  if (window.localStorage.getItem(name) != null) {
    window.localStorage.removeItem(name);
  } else {
    window.localStorage.setItem(name, name);
    var item = name.split(/\s(.+)/);
    link = "/incrementTimesSaved/" + item[0];
  }
  for (var i = 0; i < window.localStorage.length; i++) {
    console.log(i.toString() + " " + window.localStorage.getItem(window.localStorage.key(i)));
  }

  window.location.href = link;
}

window.addEventListener("load", () => {
  const links = document.querySelectorAll(
    "button[save_product]"
  );
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
  window.location.href = "/";
}

window.addEventListener("load", () => {
  const links = document.querySelectorAll(
    "button[clear_storage]"
  );
  links.forEach((element) => {
    element.addEventListener("click", (event) => {
      event.preventDefault();
      clear_storage();
    });
  });
});


function convertToSymbols(mystring) {
  return mystring.replace(/&amp;/g, "&").replace(/&gt;/g, ">").replace(/&lt;/g, "<").replace(/&quot;/g, '"').replace(/&#39;/g, "'");
}

window.checkSavedList = function(name) {
  if (window.localStorage.getItem(convertToSymbols(name)) != null) {
    return true;
  }
  return false;
}

window.displaySaveLabel = function(id, className) {
  const element = document.getElementById(id)
  element.innerHTML = "SAVED";
  element.classList.toggle("hidden");
  element.classList.toggle(className);
}

window.displaySaveList = function() {
  for(var i = 0; i < window.localStorage.length; i++) {
    var item = window.localStorage.key(i).split(/\s(.+)/);
    console.log("item " + i);
    for(var x in item) {
      console.log(item[x]);
    }
    var node = document.createElement("LI");
    var linkNode = document.createElement("A")
    linkNode.href = "product/" + item[0];
    var textnode = document.createTextNode(item[1]);
    node.appendChild(linkNode);
    linkNode.appendChild(textnode);
    document.getElementById("saveList").appendChild(node);
  }
}

window.addEventListener("load", () => {
  const links = document.querySelectorAll(
    "button[id='collections_all']"
  );
  links.forEach((element) => {
    element.addEventListener("click", (event) => {
      event.preventDefault();
      const selections = document.querySelectorAll("input[class='collections_select']");
      selections.forEach((box) => {
        if(!box.checked) {
          box.checked = true;
        } else {
          box.checked = false;
        }
      });
    });
  });
});