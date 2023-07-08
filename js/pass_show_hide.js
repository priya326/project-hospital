const pswdfield = document.getElementById("pass")
const pswdfield2 = document.getElementById("pass2")
const pswdfield3 = document.getElementById("pass3")
const pswdfield4 = document.getElementById("pass4")
const pswdfield5 = document.getElementById("pass5")
toggleBtn = document.getElementById("eye");
toggleBtn2 = document.getElementById("eye2");
toggleBtn3 = document.getElementById("eye3");
toggleBtn4 = document.getElementById("eye4");
toggleBtn5 = document.getElementById("eye5");

function toggle(){
    if(pswdfield.type == "password"){
        pswdfield.type = "text";
        toggleBtn.classList.add("active");
    }else{
        pswdfield.type = "password";
        toggleBtn.classList.remove("active");
    }
}
function toggle2(){
    if(pswdfield2.type == "password"){
        pswdfield2.type = "text";
        toggleBtn2.classList.add("active");
    }else{
        pswdfield2.type = "password";
        toggleBtn2.classList.remove("active");
    }
}
function toggle3(){
    if(pswdfield3.type == "password"){
        pswdfield3.type = "text";
        toggleBtn3.classList.add("active");
    }else{
        pswdfield3.type = "password";
        toggleBtn3.classList.remove("active");
    }
}
function toggle4(){
    if(pswdfield4.type == "password"){
        pswdfield4.type = "text";
        toggleBtn4.classList.add("active");
    }else{
        pswdfield4.type = "password";
        toggleBtn4.classList.remove("active");
    }
}
function toggle5(){
    if(pswdfield5.type == "password"){
        pswdfield5.type = "text";
        toggleBtn5.classList.add("active");
    }else{
        pswdfield5.type = "password";
        toggleBtn5.classList.remove("active");
    }
}