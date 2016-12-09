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
