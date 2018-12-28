$(document).ready(()=>{
    $('.close').click(()=>{
        console.log("click");
        $('.error-message').css('transform','scaleY(0.00001)');
    });
});
