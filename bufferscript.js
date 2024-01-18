var targetURL = 'SignInForm.html';
var redirectDelay = 1500; // 3000 milliseconds (3 seconds)
    // Function to perform the redirect after the delay
function redirectToTarget() {
window.location.href = targetURL;
}

        // Use setTimeout to call redirectToTarget after the specified delay
setTimeout(redirectToTarget, redirectDelay);
