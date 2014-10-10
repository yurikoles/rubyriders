$(document).ready(function() {
  // $('.wrap').css('background-image', "url('../images/ocean2.jpg')");

  // var images = ['../images/ocean1.jpg', '../images/ocean2.jpg', '../images/ocean3.jpg'];
  //   var i = 0;
  //   var timeoutVar;

  //   function changeBackground() {
  //       clearTimeout(timeoutVar); // just to be sure it will run only once at a time

  //       $('.wrap').css('background-image', function() {
  //           if (i >= images.length) {
  //               i=0;
  //           }
  //           return 'url(' + images[i++] + ')';      
  //       });

  //       // call the setTimeout every time to repeat the function
  //       timeoutVar = setTimeout(changeBackground, 3000);
  //   }

  //   // Call it on the first time and it will repeat
  //   changeBackground().fadeIn("slow");      

           
  var i = 0; 
  var images = ['../images/ocean2.jpg', '../images/ocean3.jpg', '../images/ocean1.jpg'];
  var image = $('.wrap');
  image.css('background-image', 'url(../images/ocean1.jpg)');
  setInterval(function(){   
     image.fadeOut(1000, function () {
      image.css('background-image', 'url(' + images[i++] + ')');
      image.fadeIn(1000);
   });
   if(i == images.length)
    i = 0;
  }, 10000);       
});