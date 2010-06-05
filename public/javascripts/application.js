// On document load
$(function() {
  
  // Animations
  animateClouds("#clouds");
  animateSurfer("#surfer");
  animateBird("#bird");  
  Comment.bind();
});
       
  
  
var Comment = {
   selector : "form.new_comment",
   spinner_src: "/images/loading.gif",
   
   bind: function() {
     $(Comment.selector).submit(Comment.send);     
     $(Comment.selector + " .errors").hide();
   },

   send: function() {
     Comment.load();
     $(Comment.selector + " .errors").html("");
      $.ajax({
        type: "POST",
        url: $(Comment.selector).attr("action"),
        data: $(Comment.selector).serialize(), 
             success:  function(data) {  Comment.receive(data); },
             error:  function(data) {  Comment.fail(data);}
      });
                   
		  return false;
   },

   fail: function(data) {
     Comment.complete();         
     $(Comment.selector + " .errors").html(data.responseText); 
     $(Comment.selector + " .errors").show();                                 
   },

   receive: function(data) {
     Comment.complete();
     $(data).appendTo(".comments");    
     $(Comment.selector)[0].reset();
   },

   load: function() {                       
     $(Comment.selector).hide();
     $("<div class='comment_spinner'> <img src='"+Comment.spinner_src+"' alt='spinner' /> &nbsp; &nbsp; Posting comment  </div>").insertAfter(Comment.selector);
   },
   
   complete: function() {
     $(".comment_spinner").remove();
     $(Comment.selector).show();
     $(Comment.selector + " .errors").hide();                            
   }
 }
 
 Comment.bind();  


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
        
