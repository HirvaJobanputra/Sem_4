function myAlert(msg){
    if(confirm("Are you sure you want to see the messge?")){
        alert(msg);
    }
    else{
        alert("Can't display the messege as the user has cancelled the operation.")
    }
}