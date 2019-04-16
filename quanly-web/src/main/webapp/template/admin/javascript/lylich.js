$(".company").change(function(){
	var company = $(this).val();
	var options =  '<option value=""><strong>Products</strong></option>';
	$(series).each(function(index, value){
		if(value.name == company){
			options += '<option value="'+value.product+'">'+value.product+'</option>';
		}
	});
	
	$('.product').html(options);
});
