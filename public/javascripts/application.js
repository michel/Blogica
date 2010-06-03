// On document load
$(function() {
  
  // Animations
  animateClouds("#clouds");
  animateSurfer("#surfer");
  animateBird("#bird");  
});

var animateClouds = function(element) {
  $(element).animate({backgroundPosition: "-6000px 0px"}, 200000, "linear");                             
}              

var animateBird = function(element) {
  $bird = $(element).animate({right: "+="+ $(document).width(), top: "-100" }, 90000,"linear");                                                                  
} 

var animateSurfer = function(element) {
  $surfer = $(element);                
  $start = { left: $surfer.css("left"),
             bottom: $surfer.css("bottom"),
             backgroundImage: $surfer.css("background-image") }
              
  $surfer.animate({left: "+=400"}, 21000,"linear").
          animate({left: "+=200",bottom: "-=10"}, 21000,"linear").
          animate({left: "+=100",bottom: "+=15"}, 1500,"linear").
          animate({left: "+=100",bottom: "-=15"}, 1500,"linear",
                  function(){$(this).css("background-image","url(/images/surfer2.png)")}).
          animate({ left: "-=900",bottom: "+=14"}, 29000,"linear",
                  function() {
                         $(this).css($start);
                         animateSurfer($surfer);
                  });
}
