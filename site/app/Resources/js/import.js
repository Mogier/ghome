$(function() {

  	$('a[href$="space"]').click(function(e) {

		e.preventDefault();

		$.get("ghome/space", function(msg){

			$("#injectedVue").html(msg);
		});
	});
});