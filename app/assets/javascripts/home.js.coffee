# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $('.star').raty({ 
    scoreName: 'rating[stars]', 
    score: $("#oldrating").attr("data-rating"),
    click: (score, evt)->
       $("#rating").submit()
      
  });
  
  $('#interestList').sortable
    axis: 'y',
    update: ->
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
    
    
  $(".viewmorebtn").each ->
    if ($(this).parent().find(".hidemore").length > 0)
      console.log ("ohai")
    else
      $(this).css({display: "none";})
      
  $(".viewmorebtn").click ->
    $(this).parent().find(".hidemore").css({display: "block";})
    $(this).css({display: "none";})
    
  $("#sticky a").click ->
    event.preventDefault();
    $("html, body").animate({scrollTop: $($(this).attr("href")).offset().top }, 2000);
    
  $(".dynamic_btn").click ->
    $(this).text($(this).data("msg") + " ")
    $(this).append("<img src='/assets/loading-16.gif'/>")
    $(this).addClass("disabled")