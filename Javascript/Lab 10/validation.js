function validation(){
    const username=document.frm.getElementById("username").value.trim();
    const password=document.frm.getElementById("password").value;
    const confirmPassword=document.frm.getElementById("confirmPassword").value;
    if(username==""){
        alert("Please enter username:");
        return false;
    }
    if(password.length<8){
        alert("Password should contain 8 characters minimum: ");
        return false;
    }
    if(password!=confirmPassword){
        alert("Password does not match!!");
        return false;
    }
    alert("Form submitted successfully!!");
    return true;
}