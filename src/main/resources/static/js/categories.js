   $(document).ready(function() {
    $('#loader').hide();
    $("#submit").on("click", function() {
    	$("#submit").prop("disabled", true);
    	var name = $("#name").val();

        var form = $("#form").serialize();
    	var data = new FormData($("#form")[0]);
    	data.append('name', name);

    	//alert(data)
        $('#loader').show();
        if (name === "") {
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
                        url: "/admin/category/editCategory",
                        processData: false,
                        contentType: false,
                        cache: false,
                        success: function(data, statusText, xhr) {
                        console.log(xhr.status);
                        if(xhr.status == "200") {
                        	$('#loader').hide();
                        	$('#success').css('display','block');
                        	$("#submit").prop("disabled", false);
                            $("#error").text("");
                            $("#success").text(data);
                            setTimeout(function(){
                                $('#success').slideUp('slow').fadeOut(function() {
                                    window.location.reload();
                                });
                           }, 3000);
                         }	   
                        },
                        error: function(e) {
                        	$('#loader').hide();
                        	$('#error').css('display','block');
                            $("#error").html("Oops! something went wrong.");
                            setTimeout(function(){
                                $('#error').slideUp('slow').fadeOut(function() {
                                    window.location.reload();
                                });
                           }, 5000);
                        }
                    });
        }
            });
        });