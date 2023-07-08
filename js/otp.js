const form = document.querySelector(".login form"),
continueBtn = form. querySelector(".button input"),
errorText = form.querySelector(".error-text");

form.onsubmit = (e)=>{
    e.preventDefault(); // prevents form from submitting
}
continueBtn.onclick = ()=>{
    // console.log("hello");

    let xhr = new XMLHttpRequest();
    xhr.open("POST", "php/otp.php", true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let data = xhr.response;
                
                if(data == "success"){
                    location.href = "newPassword.php";
                }else{
                    errorText.textContent = data;
                    errorText.style.display = "block";
                }

            }
        }
    }
    let formData = new FormData(form);
    xhr.send(formData);
}