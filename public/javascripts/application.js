$(function() {
  $("#clouds").animate({backgroundPosition: "-6000px 0px"}, 200000, "linear");                           
    
  var animateBird = function(element) {
      $bird = $(element);      

      $bird.animate({right: "+="+ $(document).width(), top: "-100" }, 90000,"linear");
      
  } 
  animateBird("#bird");
  var animateSurfer = function(element) {   
    $surfer = $(element);      
    s_left = $surfer.css("left");
    s_bottom =  $surfer.css("bottom");    
    $surfer.animate({left: "+=400"}, 21000,"linear").
                 animate({left: "+=200",bottom: "-=10"}, 21000,"linear").
                 animate({left: "+=100",bottom: "+=15"}, 1500,"linear").
                 animate({left: "+=100",bottom: "-=15"}, 1500,"linear",
                  function(){$(this).css("background-image","url(/images/surfer2.png)")}).                 
                 animate({ left: "-=900",bottom: "+=14"}, 29000,"linear",
                         function() {
                           $(this).css("background-image","url(/images/surfer.png)");
                           $(this).css("bottom",s_bottom);                                               
                           $(this).css("left",s_left);
                           animateSurfer($surfer);
                         });
  }    
  animateSurfer("#surfer");
  
});
                 

 