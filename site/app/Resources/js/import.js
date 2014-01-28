function insert(idString) {

	$.get("ghome/"+idString,
	function(msg){
		$("#injectedVue").html(msg);
	});
}