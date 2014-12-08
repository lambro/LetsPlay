$(function(){
  console.log("hello")

  $("#menutoggle, #sbar2#menutoggle").on('click', function(){
    console.log("hello")
    $("#sbar1").slideToggle();
    $("#sbar7").slideToggle(500);
    $("#sbar2").slideToggle(600);
    $("#sbar3").slideToggle(700);
    $("#sbar4").slideToggle(800);
    $("#sbar5").slideToggle(900);
    $("#sbar6").slideToggle(1000);
  }); 

  $("#hide, #show").on('click', function(){
    $("#show, #hide, #sbar1").slideToggle();
  });

  // $('#hmBackground').each(function() {
  //     $(this).wrap('<div class="tint"></div>');
  //   });
})