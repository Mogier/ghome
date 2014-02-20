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
	$('a[href$="historique"]').click(function(e) {

		e.preventDefault();

		$("#flashMessage").empty();

		$.get("content/historique", function(msg){

			$("#injectedVue").html(msg);
		});
	});

	// find button to



	/*

	$(document).bind("ajaxSuccess", function(event, xhr, settings) {

		if(settings.url == 'content/space') {

			form = $('form');

			form.submit(function( e ) {

				e.preventDefault();

			  	$.post( form.attr('action'), form.serialize() )
			});
		}
		else if( settings.url == '/ghome/site/web/app_dev.php/addSpace') {
			
			$.get("content/space", function(msg) {

				$('#myModal').modal('hide');
				$("#injectedVue").empty();
				//$("#injectedVue").html(msg);
			});		
		}
		else if(settings.url === 'content/addCcapteur') {

		}

		/**
		else if( settings.url != 'flash') {

			form = $('form');
			console.log(form);

			form.submit(function( e ) {

			    e.preventDefault();

			  	$.post( form.attr('action'), form.serialize() )
				  .done(function( data ) {

				  	if(form.attr('name') == 'capteur') {
				  		$("#injectedVue").html(data);
				  		$.get("flash", function(msg){

							$("#flashMessage").html(msg);
						});
				  	}
				  	else if(form.attr('name') == 'espace')
				    	$('#myModal').modal('hide');
				    	$.get("content/space", function(msg){

							$("#injectedVue").html(msg);
						});

				    	$.get("flash", function(msg){

							$("#flashMessage").html(msg);
						});
				  });
			});
		} 

	 });*/


});