
$(function(){
	$("#deleteSb").click(function(){
		$()
	});
	
    var duration = 300;
    var $aside = $('.sidebar > aside');
    var $asidButton = $aside.find('button')
        .on('click', function(){
        	$aside.toggleClass('open');
            if($aside.hasClass('open')){
              console.log("open sidebar");
                $aside.stop(true).animate({left: '-70px'}, duration, 'easeOutBack');
                $asidButton.find('img').attr('src', './resources/img/btn_close.png');
                
                var html = "";
                $.ajax({
        			url:"heartlist",
        			success : function(data) {
        				dd=data;
        				for(var i =0;i<dd.length;i++)
        					{	
        						html+="<li>";
        						html+='<input type="checkbox" name="chkbox" value='+dd[i].id+'>';
        						html+="<a href=get>";
        						html+= dd[i].id+"<br>"+dd[i].rentType+"<br>"+dd[i].areaPrice+"<br>"+dd[i].areaSize+"<br>"+dd[i].areaAddress+"<br>";
        						html+="</a>";
        						html+="</li>";
        					}
        				$(".scrollsidebar").html(html);
        			},
        			error : function (request,status,error) {
        				console.log("error")
        			}
            	});
            }
            
            else{
              console.log("close sidebar");
                $aside.stop(true).animate({left: '-350px'}, duration, 'easeInBack');
                $asidButton.find('img').attr('src', './resources/img/btn_open.png');
            };
       
        });

    
    $("#chkAll").click(function(){
        if($("#chkAll").prop("checked")) {
          $("input[type=checkbox]").prop("checked",true);
        }
        else {
          $("input[type=checkbox]").prop("checked",false);
        }
      });
    
    $("input[type=submit]").click(function(){
    	
    });
    
    
});

