$(function() {

  	$('a[href$="space"]').click(function(e) {

		e.preventDefault();

		$("#flashMessage").empty();

		$.get("content/space", function(msg){

			$("#injectedVue").html(msg);
		});
	});

	$('a[href$="capteur"]').click(function(e) {

		e.preventDefault();

		$("#flashMessage").empty();

		$.get("content/capteur", function(msg){

			$("#injectedVue").html(msg);
		});
	});

	$('a[href$="actionneur"]').click(function(e) {

		e.preventDefault();

		$("#flashMessage").empty();

		$.get("content/actionneur", function(msg){

			$("#injectedVue").html(msg);
		});
	});
	$('a[href$="historique"]').click(function(e) {

		e.preventDefault();

		$("#flashMessage").empty();

		$.get("content/historique", function(msg){

			$("#injectedVue").html(msg);
		});
	});
});