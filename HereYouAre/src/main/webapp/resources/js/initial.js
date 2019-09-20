$(function(){
	
	var heartCount = 0;
	var heartCountList =[[],[]];
	
	for(var a = 0; a<estateInfo[1].length;a++)
		{
			heartCount=0;
			for(var b = 0;b<allHeartId.length;b++)
				{
					if(estateInfo[0][a]==allHeartId[b])
						{
							heartCount++;
						}
				}
			heartCountList[0][a]=estateInfo[0][a];
			heartCountList[1][a]=heartCount;
		}
	
	var polygonPath = [];
	var polygon = null;

	if(lat[0]!=null)
		{
		
		for(var i = 0 ;i<lat.length;i++)
		{
			polygonPath.push(new kakao.maps.LatLng(lat[i],lon[i]));
		}
//     지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
		var bounds = new kakao.maps.LatLngBounds();  
		
		for(var i = 0;i<polygonPath.length;i++)
		{
			bounds.extend(polygonPath[i])
		}
		
		polygon = new kakao.maps.Polygon({
			path:polygonPath, // 그려질 다각형의 좌표 배열입니다
			strokeWeight: 3, // 선의 두께입니다
			strokeColor: 'lightgreen', // 선의 색깔입니다
			strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
			strokeStyle: 'line', // 선의 스타일입니다
			fillColor: 'lightgreen', // 채우기 색깔입니다
			fillOpacity: 0.2 // 채우기 불투명도 입니다
		});
		
		
		// 지도에 다각형을 표시합니다
		polygon.setMap(map);
		
		map.setBounds(bounds);
		map.setLevel(map.getLevel());
		}
  
    /////////////////////////////////////////////////////////////////
	
  if(q01[0][0]==null)
	  {
	  document.getElementById("adongName").innerHTML="행정동을 선택하세요";
	  document.getElementById("totalLivingPop").innerHTML="-";
	  document.getElementById("maxLivingPop").innerHTML="-";
	  document.getElementById("mainTarget").innerHTML="-";
	  document.getElementById("tradeIndex").innerHTML="-";
	  document.getElementById("dangerIndex").innerHTML="-";
	  }
  else
	  {
	  var adongName = "-"+tradeIndexInfo[1]+" "+dangerIndexInfo[1]+"-";
	  document.getElementById("adongName").innerHTML=adongName;
	  var totalLivingPop = livingPopInfo[0];
	  document.getElementById("totalLivingPop").innerHTML=totalLivingPop;
	  var maxLivingPop = livingPopInfo[2];
	  document.getElementById("maxLivingPop").innerHTML=maxLivingPop;
	  var mainTarget = livingPopInfo[1];
	  document.getElementById("mainTarget").innerHTML=mainTarget;
	  var tradeIndex = tradeIndexInfo[2];
	  document.getElementById("tradeIndex").innerHTML=tradeIndex;
	  var dangerIndex = dangerIndexInfo[2];
	  document.getElementById("dangerIndex").innerHTML=dangerIndex;
	  
	  document.getElementById("layer1context").innerHTML="시군구 평균 영업 개월: "+tradeIndexInfo[3]+"<br>시군구 평균 폐업 개월: "+tradeIndexInfo[4];
	  document.getElementById("layer2context").innerHTML="행정동 평균 폐업 기간: "+dangerIndexInfo[4]+"<br>점포증감률: "+dangerIndexInfo[5]+"<br>폐업신고율: "+dangerIndexInfo[3];
	  
	  
	  }
  
  ////////////////////////////////////////////////////////////////
  
//주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	var clickedOverlay2 = null;
	var overlay2 = null;
	let testIndex = null;
	
	estateInfo[8].forEach(function(addr, index) {
	    geocoder.addressSearch(addr, function(result, status) {
	        if (status === daum.maps.services.Status.OK) {
	        	
	        	var heartVal = 0;
	        	
	        	for(var a = 0;a<heartInfo[0].length;a++)
	        		{
	        			if(heartInfo[1][a]==estateInfo[0][index])
	        				{
	        					heartVal = 1;
	        				}
	        		}
	        	
	            var coords = new daum.maps.LatLng(result[0].y, result[0].x);

	            var imageSize = new kakao.maps.Size(29, 42),
	            imageOptions = {  
	                spriteOrigin: new kakao.maps.Point(0, 0),    
	            };     
	        
	            // 마커이미지와 마커를 생성합니다
	            var markerImage = createMarkerImage('/are/resources/img/marker3.png', imageSize, imageOptions) 
	            
	            var marker = new daum.maps.Marker({
	                map: map,
	                position: coords,
	                image: markerImage
	            });
	            estateMarkers[index] = marker;
	            
	            
	            function closeOverlay() {
	    			overlay2.setMap(null);     
	    		}
	            
	            function consulting(){
	            	if(email!="")
	            		{
	            		document.getElementById('consultingForm').submit();
	            		}
	            	else
	            		{
	            		alert("\n로그인이 필요한 서비스입니다\n\nꉂꉂ(ᵔᗜᵔ*)ꉂꉂ(ᵔᗜᵔ*)ꉂꉂ(ᵔᗜᵔ*)");
	            		}
	            }
	            
	            function clickHeart()
	            {
	            	if(email!="")
	            		{
		            		var id_check = $(this).attr("id");
		            		
		            		if(id_check=="heart")
		            		{
		            			$("#heart").attr('id','fullheart'); 
		            			$.ajax({
		            				data : {"email":email, "id":estateInfo[0][index]},
		            				url : "insertHeartInfo",
		            				success : function(data)
		            				{
		            							alert("\n찜목록에 추가 되었습니다.\n\nꉂꉂ(ᵔᗜᵔ*)ꉂꉂ(ᵔᗜᵔ*)ꉂꉂ(ᵔᗜᵔ*)");
		            							$("#heartCount").text("+"+data);
		            				}
		            			});
		            			
		            		}
		            		else
		            		{
		            			$("#fullheart").attr('id','heart'); 
		            			$.ajax({
		            				data : {"email":email, "id":estateInfo[0][index]},
		            				url : "deleteHeartInfo",
		            				success : function(data)
		            				{
						            			alert("\n찜목록에서 삭제 되었습니다.\n\nꉂꉂ(ᵔᗜᵔ*)ꉂꉂ(ᵔᗜᵔ*)ꉂꉂ(ᵔᗜᵔ*)");
		            							$("#heartCount").text("+"+data);
		            				}
		            			});
		            		}
	            		}
	            	else
	            		{
	            			alert("\n로그인이 필요한 서비스입니다\n\nꉂꉂ(ᵔᗜᵔ*)ꉂꉂ(ᵔᗜᵔ*)ꉂꉂ(ᵔᗜᵔ*)");
	            		}
	            }
	            var $title2 = null; 
	            var $desc2 = null;
	            
	            var o = 0;
	            for(var a = 0;a<realtor[1].length;a++)
	            	{
	            		if(estateInfo[9][index]==realtor[1][a])
	            			{
	            				$title2 = $('<div class="title3" />').text(realtor[13][a]+" - "+realtor[0][a]);
	            				$desc2 = $('<div class="desc3" />').html(realtor[1][a]+'<br>'+realtor[3][a]+'<br>'+realtor[14][a]+'<br><div class="Stars" style="--rating: '+realtor[16][a]+';"></div>');
	            				o = 1;
	            				break;
	            			}
	            	}
	            if(o==0)
	            	{
	            		console.log("이메일 오류");
	            	}
	            
	            var $heartCount = $('<div id = "heartCount" />');
	            
	            for(var a = 0;a<heartCountList[0].length;a++)
	            	{
	            		if(estateInfo[0][index]==heartCountList[0][a])
	            			{
	            				$heartCount = $('<div id = "heartCount" />').text("+"+heartCountList[1][a]);
	            				break;
	            			}
	            	}
	            
	    		var $wrap = $('<div class="wrap2" />');
	    		var $info = $('<div class="info2" />');
	    		var $div1 = $('<div class="div1"/>');
	    		var $title = $('<div class="title2" />').text(estateInfo[2][index]+"상가 - "+estateInfo[0][index]);
	    		if(heartVal==0)
	    		{
	    			var $imgvv = $('<i class="fa fa-heart" aria-hidden="true" id = "heart" style="font-size:large;"></i>').click(clickHeart);
	    		}
	    		else
	    		{
	    			var $imgvv = $('<i class="fa fa-heart" aria-hidden="true" id = "fullheart" style="font-size:large;"></i>').click(clickHeart);
	    		}
	    		var $body = $('<div class="body2" />');
	    		var $body2 = $('<div class="body3" />');
	    		var $img = $('<div class="img2" />');
	    		var $img2 = $('<div class="img3" />');
	    		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="200" height="120">');
	    		var $imgv2 = $('<img src= "resources/img/user_icon-icons.com_66546.png" width="100" height="100">');
	    		var $desc = $('<div class="desc2" />');
	    		var $ellipsis = $('<div class="ellipsis2"/>').text(estateInfo[3][index]+" - "+estateInfo[4][index]+"만원");
	    		var $jibun = $('<div class="jibun2 ellipsis2"/>').text(estateInfo[5][index]+"㎡, "+estateInfo[6][index]+"층");
	    		var $div = $('<div class = "juso" style="font-size:m"/>').text(estateInfo[8][index]);
	    		var $consulting = $('<div style = "text-align:center; font-size:large; color:coral"><span id ="consulting">상담예약</span></div>').click(consulting);
	    		var $div2 = $('<div class="div2"/>');
	    		var $close = $('<div class="close2" title="닫기" />').click(closeOverlay);
	    		var $form = $('<form action = "consult_request" id="consultingForm"> <input id = "id" type ="hidden" name = "id" value = "'+estateInfo[0][index]+'"/></form>');
	    		
	    		$wrap.append($info);
	    		$info.append($div1).append($div2);
	    		$div1.append($title).append($body);
	    		$div2.append($title2).append($body2);
	    		$title.append($imgvv).append($heartCount);
	    		$title2.append($close);
	    		$body.append($img).append($desc);
	    		$body2.append($img2).append($desc2);
	    		$ellipsis.append(" &nbsp; ");
	    		$img.append($imgv);
	    		$img2.append($imgv2);
	    		$desc.append($ellipsis).append($jibun).append($div).append($consulting).append($form);
	    		
	    		var content = $wrap[0];
	    		
	    		var overlay2 = new kakao.maps.CustomOverlay({
	    			content: content,
	    			map: map,
	    			position: marker.getPosition()  
	    		});
	    		overlay2.setMap(null);     
	    		estateOverlays[index] = overlay2;
	    		
	    		kakao.maps.event.addListener(marker, 'click', function() {
	    			if(clickedOverlay2)
	    			{
	    				clickedOverlay2.setMap(null);
	    			}
	    			overlay2.setMap(map);
	    			clickedOverlay2 = overlay2;
	    		});
	    		
	        } 
	    });
	});
	
	
	
	
});