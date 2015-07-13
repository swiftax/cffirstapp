$(document).on('ready page:load', function(){
$('#tags').tagsInput({
  autocomplete_url:'http://localhost:3000',
  autocomplete:{selectFirst:true,width:'100px',autoFill:true
	}
 });
});