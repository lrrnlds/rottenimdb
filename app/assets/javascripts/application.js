// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require navbar

function upvoteButton () {
  $(".upvote").on("click", ".upvote_button", function(event){
    event.preventDefault();
    var $this = $(this).parents();
    var url = $this.attr("action");
    var method = $this.attr("method");
    var vote = $this.siblings("p").children(".vote");
    $.ajax({
      url: url,
      method: method
    }).done(function(response){
      $(vote).text(response)
    })
    })
}
