$(document).ready(function(){
   $("button[data-target-modal=rootword-modal]").on('click', function(event){
      var rootword = $(this).children('.rootword-data').data('rootword');

      var modal = $('#rootword-modal');
      modal.find("[data-rootword='word']").text(rootword.word);
      modal.find("[data-rootword='meaning']").text(rootword.meaning);
      modal.find("[data-rootword='usages']").empty().append("<li> <h3>"+ rootword.usages +"</h3></li>");

      event.preventDefault();
   });
});