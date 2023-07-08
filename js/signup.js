const form = document.querySelector(".signup form"),
continueBtn = form. querySelector(".button input"),
errorText = form.querySelector(".error-text");

form.onsubmit = (e)=>{
    e.preventDefault(); // prevents form from submitting
}
continueBtn.onclick = ()=>{
    // console.log("hello");

    let xhr = new XMLHttpRequest();
    xhr.open("POST", "php/signup.php", true);
    xhr.onload = ()=>{
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                let data = xhr.response;
                if(data == "success"){
                    location.href = "index.php";
                }else{
                    errorText.textContent = data;
                    errorText.style.display = "block";
                    window.scrollTo(0, 0);
                }

            }
        }
    }
    let formData = new FormData(form);
    xhr.send(formData);
}