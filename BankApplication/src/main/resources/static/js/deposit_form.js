/**
 * 
 */
function validate(){
    var amount=document.getElementById("amount").value;
    var type=document.getElementById("accounttype").value;
    if(amount==0){
        document.getElementById("zero").innerHTML="Please Enter the amount to Deposit";
        return false;
    }else if(amount>20000 && type=="Savings Account"){
        document.getElementById("zero").innerHTML="Please Enter the amount minimum amount less than 20000";
        return false;
    }else if(amount>40000 && type=="Current Account"){
        document.getElementById("zero").innerHTML="Please Enter the amount minimum amount less than 40000";
        return false;
    }
    return true;
}
