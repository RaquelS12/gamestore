console.log(document.cookie);
window.onload = function(){
    toggleVisibility(getCookie('formname'));
}

function toggleVisibility(id) {
    let name = id + 'Form';
    console.log(name);
    toggleVisibilityHideAll();
    if (document.getElementById(name).classList.contains("hidden")){
        document.getElementById(name).classList.remove("hidden");
        document.cookie='formname=' + id;
    } else{
        document.getElementById(name).classList.add("hidden");

    }
}

function toggleVisibilityHideAll(){
    let toggles = document.getElementsByClassName('tohide');

    for (let toggle of toggles) {
        toggle.classList.remove("hidden");
        toggle.classList.add("hidden");
    }
}

function confirmMsg(id){
    if(confirm("tem a certeza que quer eliminar o produto?")){
        location.href="delete_product.php?id="+id;
    }
        
}

function getCookie(cname) {
    let name = cname + "=";
    let decodedCookie = decodeURIComponent(document.cookie);
    let ca = decodedCookie.split(';');
    for(let i = 0; i <ca.length; i++) {
      let c = ca[i];
      while (c.charAt(0) == ' ') {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return c.substring(name.length, c.length);
      }
    }
    return "";
  } 