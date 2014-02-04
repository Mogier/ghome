$(function() {

2  	$('a[href$="space"]').click(function(e) {

		$.get("ghome/space", function(msg){
			$("#injectedVue").html(msg);
		});

		return false;
	});
3});