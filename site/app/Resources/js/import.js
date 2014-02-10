$(function() {

  	$('a[href$="space"]').click(function(e) {

		e.preventDefault();

		$.get("ghome/space", function(msg){

			$("#injectedVue").html(msg);
		});
	});

	$('a[href$="capteur"]').click(function(e) {

		e.preventDefault();

		$.get("ghome/capteur", function(msg){

			$("#injectedVue").html(msg);
		});
	});
});