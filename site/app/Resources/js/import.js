$(function() {

  	$('a[href$="space"]').click(function(e) {

		e.preventDefault();

		$("#flashMessage").empty();

		$.get("content/space", function(msg){

			$("#injectedVue").html(msg);

			buttons = $('table').find('button');
			
			$.each(buttons, function( key, button) {

			});
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

});
