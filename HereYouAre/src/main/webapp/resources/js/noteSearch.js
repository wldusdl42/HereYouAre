$(document).ready(function(){
       $("#search").keypress(function (e) {
        if (e.which == 13){
        	noteSearch();  // 실행할 이벤트
        }
    });
       
       $("#submit").click(function(){
    	   noteSearch();
       });
});



 function noteSearch(){
	 var keyword = $("#search").val();
	 
	 $.ajax({
		 data: {"keyword":keyword},
		 url: "noteSearch",
		 success: function(data)
		 {
			 var searchResult = '';
			 
							 
			 for(var a=0;a<data.length;a++)
				 {
				 	
				 
				 	if(data[a].view==1)
				 		{
				 		searchResult += '<tr>'
				 		searchResult += '<td class="table__cell table__cell--checkbox table__cell--no-wrap">'
				 		searchResult +='<input type="checkbox">'
				 		searchResult +='</td>'
				 		searchResult +='<td><i class="fa fa-envelope-open-o" aria-hidden="true"></i></td>'
				 		searchResult +='<td>'+data[a].sender+'</td>'
				 		searchResult +='<td><a href="note_view?recipient='+data[a].recipient+'&content='+data[a].content+'&count='+count+'" style="color:black;">'+data[a].content+'</a></td>'
				 		searchResult +='<td>'+data[a].alerttime+'</td>'
				 		searchResult +='</tr>';
				 		
				 		}
				 	else
				 		{
				 		searchResult += '<tr>'
				 		searchResult += '<td class="table__cell table__cell--checkbox table__cell--no-wrap">'
				 		searchResult +='<input type="checkbox">'
				 		searchResult +='</td>'
				 		searchResult +='<td style="color:#1a73e8"><i class="fa fa-envelope-o" aria-hidden="true"></i></td>'
				 		searchResult +='<td style="color:#1a73e8">'+data[a].sender+'</td>'
				 		searchResult +='<td style="color:#1a73e8"><a href="note_view?recipient='+data[a].recipient+'&content='+data[a].content+'&count='+count+'" style="color:#1a73e8">'+data[a].content+'</a></td>'
				 		searchResult +='<td style="color:#1a73e8">'+data[a].alerttime+'</td>'
				 		searchResult +='</tr>';
				 		}
				 	
				 	
				 }
			 $(".table__body").html(searchResult);
		 }
	 });
 }