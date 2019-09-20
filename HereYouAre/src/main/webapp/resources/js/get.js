/**
 * 
 */
$(function(){
    $("#chkAll").click(function(){
      if($("#chkAll").prop("checked")) {
        $("input[type=checkbox]").prop("checked",true);
      }
      else {
        $("input[type=checkbox]").prop("checked",false);
      }
    });
    
    
	$("#deleteBtn").click(function(){
		var id = $("input[type=hidden]").val();
		 $.ajax({
				 url : "deleteEach",
				 data: {"id":id},
				 type : "POST",
				 success : function(data){
					 console.log(id);
				 },
			 error : function (request,status,error) {
				 console.log("deleteEach error");
			 }
			 });
    });
});