/**
 * 
 */
function validate(){
	var name = document.getElementById("username").value;
	var pass = document.getElementById("password").value;
    var f = 0;
	if(name==null || name=="" || pass==null || pass=="")
    {
        f=1;
    }
    
    if(f==0)
    {
        document.getElementById("notice").innerHTML="<span style=\"color:green\">Completed ...Proceed Further</span>"
        document.getElementById("submit").innerHTML="<button type=\"submit\">Login</button>";
    }    
    else
    {
        document.getElementById("notice").innerHTML="<span style=\"color:red\">Complete the entries</span>"
        document.getElementById("submit").innerHTML="<button type=\"submit\" style=\"background-color:#798189;\" disabled>Login</button>";
    }
    
}