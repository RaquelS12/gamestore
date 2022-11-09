console.log(document.cookie);
window.onload = function(){
    toggleVisibility(document.cookie);
}

function toggleVisibility(id) {
    let name = id + 'Form';
    //toggleVisibilityHideAll();
    if (document.getElementById(name).classList.contains("hidden")){
        document.getElementById(name).classList.remove("hidden");
        document.cookie=id;
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
