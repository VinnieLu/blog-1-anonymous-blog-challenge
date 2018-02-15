$(document).ready(function() {
  $("#new_entry_link").on("click", function(event) {
  	event.preventDefault()
  	link = $(this)
  	$.ajax({
  		url: link.attr("href"),
  		type: "GET"
  	})
  	.done(function(response) {
  		link.after(response)
  		link.hide()
  	})
  })
  // $("body").on("submit", "#new_entry_submit", function(event) {
  // 	event.preventDefault()
  // 	console.log("Hello world")
  // })
});
