   $(document).ready(function() {
    $('#loader').hide();
    $("#submit").on("click", function() {
    	$("#submit").prop("disabled", true);
    	var name = $("#name").val();
    	data.append('name', name);
        console.log("name", data);
    	//alert(data)
        $('#loader').show();
        if (name === "" ) {
        	$("#submit").prop("disabled", false);
            $('#loader').hide();
            $("#name").css("border-color", "red");
            $("#error_name").html("Please fill the required field.");
        } else {
            $("#name").css("border-color", "");
            $('#error_name').css('opacity', 0);
                    $.ajax({
                        type: 'POST',
                        data: data,
                        url: "/admin/category/saveCategory",
                        processData: false,
                        contentType: false,
                        cache: false,
                        success: function(data, statusText, xhr) {
                        console.log(xhr.status);
                        if(xhr.status == "200") {
                        	$('#loader').hide(); 
                        	$("#form")[0].reset();
                        	$("#submit").prop("disabled", false);
                        	$('#success').css('display','block');
                            $("#error").text("");
                            $("#success").text(data);
                            $('#success').delay(3000).fadeOut('slow');
                            //location.reload();
                         }	   
                        },
                        error: function(e) {
                        	$('#loader').hide();
                        	$('#error').css('display','block');
                            $("#error").html("Oops! something went wrong.");
                            $('#error').delay(5000).fadeOut('slow');
                            location.reload();
                        }
                    });
        }
            });
        });