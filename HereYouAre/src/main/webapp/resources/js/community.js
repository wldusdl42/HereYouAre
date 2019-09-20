$(document).ready(function(){
   $(".addNotice").keypress(function () {
    	addNotice();  // 실행할 이벤트
    	
    });
       
   $(".addHallofFame").keypress(function () {
	   addHallofFame();  // 실행할 이벤트
   		
   });
   
   var title = $('#title').attr('title');
   console.log(title);
});


 function addNotice(){
			var searchResult = '';
			searchResult +='<script type="text/javascript">'
				searchResult +='$("document").ready(function(){'
				searchResult +='	$(".addSuccess").click(function(){'
				searchResult +='		alert("등록 완료");'
				searchResult +='	});'
				searchResult +='});'
				searchResult +='</script>'
		 		searchResult +='<div class="paging">'
		 		searchResult +='<div class="rerun"><a href="">공지사항</a></div>'
		 		searchResult +='<div class="container">'
		 		searchResult +='<div class="card"></div>'
		 		searchResult +='<div class="card">'
		 		searchResult +='<h1 class="title">Notice</h1>'
		 		searchResult +='<form action="noticeBoardAdd" method="get">'
		 		searchResult +='<div class="input-container">'
		 		searchResult +='<input type="text" name="title" required=""/>'
		 		searchResult +='<label for="">title</label>'
		 		searchResult +='<div class="bar"></div>'
		 		searchResult +='</div>'
		 			
		 		searchResult +='<div class="input-container">'
		 		searchResult +='<textarea id="editor" name="editor" class="editor" rows="50" cols="90"/>'
		 		searchResult +='<script>'
		 		searchResult +='CKEDITOR.replace("editor", {'
		 		searchResult +='filebrowserUploadUrl :"/are/upload/imageUpload/"'
		 		searchResult +='});'
		 		searchResult +='var data = CKEDITOR.instances.editor.getData();'
		 		searchResult +='console.log("data", data);'
		 		searchResult +='</script>'
				 			
		 		searchResult +='<div class="bar"></div>'
		 		searchResult +='</div>'
		 		searchResult +='<div class="button-container">'
			 	searchResult +='<input type="submit" value="전송" class="check">'
		 		searchResult +='</div>'
		 		searchResult +='</form>'
		 		searchResult +='</div>'
		 		searchResult +='</div>'
			 $(".box3").html(searchResult);
 }
 
 function addHallofFame(){
		var searchResult = '';
		
			searchResult +='<script type="text/javascript">'
			searchResult +='$("document").ready(function(){'
			searchResult +='	$(".addSuccess").click(function(){'
			searchResult +='		alert("등록 완료");'
			searchResult +='	});'
			searchResult +='});'
			searchResult +='</script>'
	 		searchResult +='<div class="paging">'
	 		searchResult +='<div class="rerun"><a href="" class="green">명예의 전당</a></div>'
	 		searchResult +='<div class="container">'
	 		searchResult +='<div class="card"></div>'
	 		searchResult +='<div class="card">'
	 		searchResult +='<h1 class="title2">Hall of Fame</h1>'
	 		searchResult +='<form method="post" action="fameBoardAdd">'
	 			
	 			
	 			
	 			
	 			
	 		searchResult +='<div class="input-container">'
	 		searchResult +='<input type="text" name="title" id="title" required=""/>'
	 		searchResult +='<label for="">title</label>'
	 		searchResult +='<div class="bar"></div>'
	 		searchResult +='</div>'
	 		searchResult +='<div class="input-container">'
	 		searchResult +='<textarea id="editor" name="editor" class="editor" rows="50" cols="90"/>'
	 		searchResult +='<script>'
	 		searchResult +='CKEDITOR.replace("editor", {'
	 		searchResult +='filebrowserUploadUrl :"/are/upload/imageUpload/"'
	 		searchResult +='});'
	 		searchResult +='var data = CKEDITOR.instances.editor.getData();'
	 		searchResult +='console.log("data", data);'
	 		searchResult +='</script>'
	 			
	 			
	 		searchResult +='<div class="bar"></div>'
	 		searchResult +='</div>'
	 		searchResult +='<div class="button-container">'
			searchResult +='<input type="submit" class="addSuccess" value="전송">'
	 		searchResult +='</div>'
	 			
	 			
	 			
	 			
	 			
	 		searchResult +='</form>'
	 		searchResult +='</div>'
		 $(".box3").html(searchResult);
}