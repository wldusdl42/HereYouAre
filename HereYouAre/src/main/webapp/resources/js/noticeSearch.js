$(document).ready(function(){
       $("#search").keypress(function (e) {
        if (e.which == 13){
        	noticeSearch();  // 실행할 이벤트
        }
    });
});


 function noticeSearch(){
	 var keyword = $("#search").val();
	 var page_id = $("#page_id").val();
	 console.log("keyword" + keyword);
	 console.log("page_id" + page_id);
	 
	 
     $.ajax({
         url:"/are/noticeSearch",
         method:"get",
         data:{"keyword":keyword, "page_id":page_id},
         success:function(data){
        	 
        	 var searchResult = '';
        	 
        	 
        	 var page_id = data.page_id;
        	 var maxPageNum = data.maxPageNum;
        	 var nBlockStart = data.nBlockStart;
        	 var nBlockEnd = data.nBlockEnd;
        	 var list = data.list;
        	 
        	 
             
             console.log("page_id:"+page_id);
             console.log("maxPageNum:"+maxPageNum);
             console.log("nBlockStart:"+nBlockStart);
             console.log("nBlockEnd:"+nBlockEnd);
             console.log("list:"+list);
             
             
             
             if(page_id == 1)
            	 {
            	 
            	 }
             else if(page_id == maxPageNum)
            	 {
            	 
            	 }
             else
             
             
             
             
             searchResult +='<ul>'
             searchResult +='<c:forEach items="${list}" var="noticeBoard">'
             searchResult +='<div class="line">'
                 for(var a=0; a<list.length; a++)
             	{
             	console.log("list:"+list[a].title);
                searchResult +='<a href="/are/getNoticeBoardContents?bId='+list[a].id+'" style="color: #1e1e1e"><li class="line_cont">'+list[a].title+'</li></a><li class="line_time" >'+list[a].write_time+'</li>'
             	}
             searchResult +='</div>'
             searchResult +='</c:forEach>'
             searchResult +='</ul>'
       		searchResult +='<div class="paging">'
    		searchResult +='<ul class="paginationBox">'
    		searchResult +='<c:if test="${page_id ne 1}">'
    		searchResult +='<a class="page-link" href="/are/1"><i class="fa fa-angle-double-left faPointer"></i></a>'
    		searchResult +='</c:if>'
    		searchResult +='<c:if test="${page_id ne 1}">'
    		searchResult +='<a class="page-link" href="/are/${page_id-1}"><i class="fa fa-angle-left faPointer"></i></a>'
    		searchResult +='</c:if>'
    		searchResult +='<c:forEach var="cnt" begin="${nBlockStart}" end="${nBlockEnd}">'
    			for(var a=nBlockStart; a<=nBlockEnd; a++)
    				{
    	    		searchResult +='<li class="page"><a class="page-link" onclick="noticeSearch()">'+a+'</a></li>'
    				}
    		searchResult +='<c:if test="${page_id ne maxPageNum}">'
    		searchResult +='<a class="page-link" href="/are/${page_id+1}"><i class="fa fa-angle-right faPointer"></i></a>'
    		searchResult +='</c:if>'
    		searchResult +='<c:if test="${page_id ne maxPageNum}">'
    		searchResult +='<a class="page-link" href="/are/${maxPageNum}"><i class="fa fa-angle-double-right faPointer"></i></a>'
    		searchResult +='</c:if>'
        	searchResult +='</ul>'
        	searchResult +='<input type="hidden" id="page_id" value='+page_id+'>'
    		searchResult +='<input type="text" id="search" style="margin-bottom:17px; margin-left:10px; margin-top:17px; value = "'+keyword+'"><input type="submit" name="submit" value="검색" onclick="noticeSearch()">'
    		searchResult +='</div>'

    		$(".list_wrapper").html(searchResult);
		 }
	 });
 }