var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(37.551855, 126.9911116), // 지도의 중심좌표 
        level: 7 // 지도의 확대 레벨 ,
    }; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 한식 마커가 표시될 좌표 배열입니다
var koreafoodPositions = [];

for(var i = 0; i<q01[0].length;i++)
	{
	koreafoodPositions.push(new kakao.maps.LatLng(q01[6][i],q01[7][i]));
	}

// 중식 마커가 표시될 좌표 배열입니다
var chinafoodPositions = [];
for(var i = 0; i<q02[0].length;i++)
{
	chinafoodPositions.push(new kakao.maps.LatLng(q02[6][i],q02[7][i]));
}
// 일식 마커가 표시될 좌표 배열입니다
var japanfoodPositions = []; 
for(var i = 0; i<q03[0].length;i++)
{
	japanfoodPositions.push(new kakao.maps.LatLng(q03[6][i],q03[7][i]));
}
//분식 마커가 표시될 좌표 배열입니다
var snakPositions = [];
for(var i = 0; i<q04[0].length;i++)
{
	snakPositions.push(new kakao.maps.LatLng(q04[6][i],q04[7][i]));
}
//닭/오리요리 마커가 표시될 좌표 배열입니다
var chickenduckPositions = [];
for(var i = 0; i<q05[0].length;i++)
{
	chickenduckPositions.push(new kakao.maps.LatLng(q05[6][i],q05[7][i]));
}

//양식 마커가 표시될 좌표 배열입니다
var westernfoodPositions = [];
for(var i = 0; i<q06[0].length;i++)
{
	westernfoodPositions.push(new kakao.maps.LatLng(q06[6][i],q06[7][i]));
}

//패스트푸드 마커가 표시될 좌표 배열입니다
var fastfoodPositions = [];
for(var i = 0; i<q07[0].length;i++)
{
	fastfoodPositions.push(new kakao.maps.LatLng(q07[6][i],q07[7][i]));
}

//제과제빵떡케익 마커가 표시될 좌표 배열입니다
var bakingPositions = [];
for(var i = 0; i<q08[0].length;i++)
{
	bakingPositions.push(new kakao.maps.LatLng(q08[6][i],q08[7][i]));
}
//주점 마커가 표시될 좌표 배열입니다
var pubPositions = [];
for(var i = 0; i<q09[0].length;i++)
{
	pubPositions.push(new kakao.maps.LatLng(q09[6][i],q09[7][i]));
}

//fusiondish 마커가 표시될 좌표 배열입니다
var fusiondishPositions = [];
for(var i = 0; i<q10[0].length;i++)
{
	fusiondishPositions.push(new kakao.maps.LatLng(q10[6][i],q10[7][i]));
}

//커피점 마커가 표시될 좌표 배열입니다
var cafePositions = [];
for(var i = 0; i<q12[0].length;i++)
{
	cafePositions.push(new kakao.maps.LatLng(q12[6][i],q12[7][i]));
}
//배달 마커가 표시될 좌표 배열입니다
var deliveryPositions = [];
for(var i = 0; i<q13[0].length;i++)
{
	deliveryPositions.push(new kakao.maps.LatLng(q13[6][i],q13[7][i]));
}
//기타 마커가 표시될 좌표 배열입니다
var etcPositions = [];
for(var i = 0; i<q14[0].length;i++)
{
	etcPositions.push(new kakao.maps.LatLng(q14[6][i],q14[7][i]));
}
//뷔페 마커가 표시될 좌표 배열입니다
var buffetPositions = [];
for(var i = 0; i<q15[0].length;i++)
{
	buffetPositions.push(new kakao.maps.LatLng(q15[6][i],q15[7][i]));
}

 
//var markerImageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png';  // 마커이미지의 주소입니다. 스프라이트 이미지 입니다
var markerImageSrc = '/are/resources/img/marker_red.png';  // 마커이미지의 주소입니다. 스프라이트 이미지 입니다
    koreafoodMarkers = [], // 커피숍 마커 객체를 가지고 있을 배열입니다
    chinafoodMarkers = [], // 편의점 마커 객체를 가지고 있을 배열입니다
    japanfoodMarkers = []; 
    snakMarkers = []; 
    chickenduckMarkers = []; 
    westernfoodMarkers = []; 
    fastfoodMarkers = []; 
    bakingMarkers = []; 
    pubMarkers = []; 
    fusiondishMarkers = []; 
    cafeMarkers = []; 
    deliveryMarkers = []; 
    etcMarkers = []; 
    buffetMarkers = []; 
//    <a href="http://imgbox.com/S8DTalSA" target="_blank"><img src="https://thumbs2.imgbox.com/a5/99/S8DTalSA_t.png" alt="image host"/></a>
    
createkoreafoodMarkers(); // 커피숍 마커를 생성하고 커피숍 마커 배열에 추가합니다
createchinafoodMarkers(); // 편의점 마커를 생성하고 편의점 마커 배열에 추가합니다
createjapanfoodMarkers();
createsnakMarkers();
createchickenduckMarkers();
createwesternfoodMarkers();
createfastfoodMarkers();
createbakingMarkers();
createpubMarkers();
createfusiondishMarkers();
createcafeMarkers();
createdeliveryMarkers();
createetcMarkers();
createbuffetMarkers();

// changeMarker('koreafood'); // 지도에 커피숍 마커가 보이도록 설정합니다    
 

// 마커이미지의 주소와, 크기, 옵션으로 마커 이미지를 생성하여 리턴하는 함수입니다
function createMarkerImage(src, size, options) {
    var markerImage = new kakao.maps.MarkerImage(src, size, options);
    return markerImage;            
}
 
// 좌표와 마커이미지를 받아 마커를 생성하여 리턴하는 함수입니다
function createMarker(position, image) {
    var marker = new kakao.maps.Marker({
        position: position,
        image: image
    });
    
    return marker;  
}   
   
   
// 커피숍 마커를 생성하고 커피숍 마커 배열에 추가하는 함수입니다
function createkoreafoodMarkers() {
    for (var i = 0; i < koreafoodPositions.length; i++) {  
        
        var imageSize = new kakao.maps.Size(29, 42),
            imageOptions = {  
                spriteOrigin: new kakao.maps.Point(0, 0),    
            };     
        
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(koreafoodPositions[i], markerImage);  
        
        // 생성된 마커를 커피숍 마커 배열에 추가합니다
        koreafoodMarkers.push(marker);
        
        //koreafoodBounds.extend(koreafoodPositions[i]);
        
    }     
}
// 커피숍 마커들의 지도 표시 여부를 설정하는 함수입니다
function setkoreafoodMarkers(map) {        
    for (var i = 0; i < koreafoodMarkers.length; i++) {  
        koreafoodMarkers[i].setMap(map);
    }        
}

// 편의점 마커를 생성하고 편의점 마커 배열에 추가하는 함수입니다
function createchinafoodMarkers() {
    for (var i = 0; i < chinafoodPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };      
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(chinafoodPositions[i], markerImage);  

        // 생성된 마커를 편의점 마커 배열에 추가합니다
        chinafoodMarkers.push(marker);    
       	//chinafoodBounds.extend(chinafoodPositions[i]);
    }        
}

// 편의점 마커들의 지도 표시 여부를 설정하는 함수입니다
function setchinafoodMarkers(map) {        
    for (var i = 0; i < chinafoodMarkers.length; i++) {  
        chinafoodMarkers[i].setMap(map);
    }        
}

// 주차장 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createjapanfoodMarkers() {
    for (var i = 0; i < japanfoodPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };       
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(japanfoodPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        japanfoodMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 주차장 마커들의 지도 표시 여부를 설정하는 함수입니다
function setjapanfoodMarkers(map) {        
    for (var i = 0; i < japanfoodMarkers.length; i++) {  
        japanfoodMarkers[i].setMap(map);
    }        
}

//분식 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createsnakMarkers() {
    for (var i = 0; i < snakPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };       
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(snakPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        snakMarkers.push(marker);        
       //	snakBounds.extend(japanfoodPositions[i]);
    }                
}

// 분식 마커들의 지도 표시 여부를 설정하는 함수입니다
function setsnakMarkers(map) {        
    for (var i = 0; i < snakMarkers.length; i++) {  
        snakMarkers[i].setMap(map);
    }        
}

//닭오리요리 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createchickenduckMarkers() {
    for (var i = 0; i < chickenduckPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };;       
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(chickenduckPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        chickenduckMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 닭오리요리 마커들의 지도 표시 여부를 설정하는 함수입니다
function setchickenduckMarkers(map) {        
    for (var i = 0; i < chickenduckMarkers.length; i++) {  
    	chickenduckMarkers[i].setMap(map);
    }        
}

//양식 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createwesternfoodMarkers() {
    for (var i = 0; i < westernfoodPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };      
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(westernfoodPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        westernfoodMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 양식 마커들의 지도 표시 여부를 설정하는 함수입니다
function setwesternfoodMarkers(map) {        
    for (var i = 0; i < westernfoodMarkers.length; i++) {  
        westernfoodMarkers[i].setMap(map);
    }        
}

//패스트푸드 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createfastfoodMarkers() {
    for (var i = 0; i < fastfoodPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };       
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(fastfoodPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        fastfoodMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 패스트푸드 마커들의 지도 표시 여부를 설정하는 함수입니다
function setfastfoodMarkers(map) {        
    for (var i = 0; i < fastfoodMarkers.length; i++) {  
        fastfoodMarkers[i].setMap(map);
    }        
}

//제과제빵 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createbakingMarkers() {
    for (var i = 0; i < bakingPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };       
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(bakingPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        bakingMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 제과제빵 마커들의 지도 표시 여부를 설정하는 함수입니다
function setbakingMarkers(map) {        
    for (var i = 0; i < bakingMarkers.length; i++) {  
        bakingMarkers[i].setMap(map);
    }        
}

//주점 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createpubMarkers() {
    for (var i = 0; i < pubPositions.length; i++) {
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };       
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(pubPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        pubMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 주점 마커들의 지도 표시 여부를 설정하는 함수입니다
function setpubMarkers(map) {        
    for (var i = 0; i < pubMarkers.length; i++) {  
        pubMarkers[i].setMap(map);
    }        
}

//별식 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createfusiondishMarkers() {
    for (var i = 0; i < fusiondishPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };    
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(fusiondishPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        fusiondishMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 별식 마커들의 지도 표시 여부를 설정하는 함수입니다
function setfusiondishMarkers(map) {        
    for (var i = 0; i < fusiondishMarkers.length; i++) {  
    	fusiondishMarkers[i].setMap(map);
    }        
}
/////////////////////////////////////////////////////////////////////
//카페 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createcafeMarkers() {
    for (var i = 0; i < japanfoodPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };     
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(cafePositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        cafeMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 카페 마커들의 지도 표시 여부를 설정하는 함수입니다
function setcafeMarkers(map) {        
    for (var i = 0; i < cafeMarkers.length; i++) {  
        cafeMarkers[i].setMap(map);
    }        
}

//배달 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createdeliveryMarkers() {
    for (var i = 0; i < deliveryPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };      
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(deliveryPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        deliveryMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 배달 마커들의 지도 표시 여부를 설정하는 함수입니다
function setdeliveryMarkers(map) {        
    for (var i = 0; i < deliveryMarkers.length; i++) {  
        deliveryMarkers[i].setMap(map);
    }        
}

//기타 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createetcMarkers() {
    for (var i = 0; i < etcPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };    
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(etcPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        etcMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 기타 마커들의 지도 표시 여부를 설정하는 함수입니다
function setetcMarkers(map) {        
    for (var i = 0; i < etcMarkers.length; i++) {  
        etcMarkers[i].setMap(map);
    }        
}

//뷔페 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createbuffetMarkers() {
    for (var i = 0; i < buffetPositions.length; i++) {
        
        var imageSize = new kakao.maps.Size(29, 42),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(0, 0),    
        };      
     
        // 마커이미지와 마커를 생성합니다
        var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
            marker = createMarker(buffetPositions[i], markerImage);  

        // 생성된 마커를 주차장 마커 배열에 추가합니다
        buffetMarkers.push(marker);        
       //	japanfoodBounds.extend(japanfoodPositions[i]);
    }                
}

// 뷔페 마커들의 지도 표시 여부를 설정하는 함수입니다
function setbuffetMarkers(map) {        
    for (var i = 0; i < buffetMarkers.length; i++) {  
        buffetMarkers[i].setMap(map);
    }        
}

// 카테고리를 클릭했을 때 type에 따라 카테고리의 스타일과 지도에 표시되는 마커를 변경합니다


function changeMarker(type){
	
	if(q01[0][0]==null)
		{
		 alert("행정동을 선택해주세요.\n\nꉂꉂ(ᵔᗜᵔ*)ꉂꉂ(ᵔᗜᵔ*)ꉂꉂ(ᵔᗜᵔ*)");
		}
	else
	{
		
	var lengthInput = $('input[id="lengthCls"]:checked').val();
	
    var koreafoodMenu = document.getElementById('koreafoodMenu');
    var chinafoodMenu = document.getElementById('chinafoodMenu');
    var japanfoodMenu = document.getElementById('japanfoodMenu');
    var snakMenu = document.getElementById('snakMenu');
    var chickenduckMenu = document.getElementById('chickenduckMenu');
    var westernMenu = document.getElementById('westernMenu');
    var fastfoodMenu = document.getElementById('fastfoodMenu');
    var bakingMenu = document.getElementById('bakingMenu');
    var pubMenu = document.getElementById('pubMenu');
    var fusiondishMenu = document.getElementById('fusiondishMenu');
    var cafeMenu = document.getElementById('cafeMenu');
    var deliveryMenu = document.getElementById('deliveryMenu');
    var etcMenu = document.getElementById('etcMenu');
    var buffetMenu = document.getElementById('buffetMenu');

    for(var a = 0;a<estateOverlays.length;a++)
	{
		if(estateOverlays[a]!=null)
			estateOverlays[a].setMap(null);
	}

	for(var a = 0;a<overlays.length;a++)
	{
		overlays[a].setMap(null);
	}
	
	for(var a = 0;a<estateMarkers.length;a++)
		{
			if(estateMarkers[a]!=null)
				{
				estateMarkers[a].setMap(map);
				}
		}
	
	
    var val = '';
	
    if (type === 'koreafood') {
    	
        // 커피숍 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = 'menu_selected';
        
        // 편의점과 주차장 카테고리는 선택되지 않은 스타일로 바꿉니다
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        
        // 커피숍 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(map);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
        
        
        val = 'Q01';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<koreafoodMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(koreafoodMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
//        				console.log("거리: "+distance);
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
        		}
		}
        
		
    } else if (type === 'chinafood') { // 편의점 카테고리가 클릭됐을 때
    	
    
        // 편의점 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = 'menu_selected';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 편의점 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(map);
        setjapanfoodMarkers(null);
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
		
        val = 'Q02';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<chinafoodMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(chinafoodMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
//        				console.log("거리: "+distance);
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
        		}
		}
        
    } else if (type === 'japanfood') { // 주차장 카테고리가 클릭됐을 때
     
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = 'menu_selected';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(map);  
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
        
        val = 'Q03';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<japanfoodMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(japanfoodMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
//        				console.log("거리: "+distance);
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
        		}
		}
        
    } else if (type === 'snak') { // 주차장 카테고리가 클릭됐을 때
     
    	for(var a = 0;a<overlays.length;a++)
		{
    		if(estateOverlays[a]!=null)
			overlays[a].setMap(null);
		}
    	
    	for(var a = 0;a<estateMarkers.length;a++)
		{
    		if(estateMarkers[a]!=null)
			{
    			estateMarkers[a].setMap(map);
			}
		}
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = 'menu_selected';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(map);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
    
        val = 'Q04';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<snakMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(snakMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
//        				console.log("거리: "+distance);
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
		}
		}
        
    } else if (type === 'chickenduck') { // 주차장 카테고리가 클릭됐을 때
     
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = 'menu_selected';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(null);
        setchickenduckMarkers(map);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
        
        val = 'Q05';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<chickenduckMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(chickenduckMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
//        				console.log("거리: "+distance);
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
        		}
		}
        
    } else if (type === 'westernfood') { // 주차장 카테고리가 클릭됐을 때
     
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = 'menu_selected';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(map);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
        
        val = 'Q06';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<westernfoodMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(westernfoodMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
		}
		}
        
    } else if (type === 'fastfood') { // 주차장 카테고리가 클릭됐을 때
     
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = 'menu_selected';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(map);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
        
        val = 'Q07';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<fastfoodMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(fastfoodMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
		}
		}
        
    } else if (type === 'baking') { // 주차장 카테고리가 클릭됐을 때
    	
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = 'menu_selected';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(map);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
        
        val = 'Q08';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<bakingMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(bakingMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
        		}
		}
        
    } else if (type === 'pub') { // 주차장 카테고리가 클릭됐을 때
     
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = 'menu_selected';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(map);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
        
        val = 'Q09';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<pubMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(pubMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
        		}
		}
        
    } else if (type === 'fusiondish') { // 주차장 카테고리가 클릭됐을 때
     
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = 'menu_selected';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(map);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
        
        val = 'Q10';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<fusiondishMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(fusiondishMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
//        				console.log("거리: "+distance);
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
        		}
		}
    } else if (type === 'cafe') { // 주차장 카테고리가 클릭됐을 때
     
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = 'menu_selected';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(map);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(null);
        
        val = 'Q12';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<cafeMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(cafeMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
//        				console.log("거리: "+distance);
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
		}
		}
        
    } else if (type === 'delivery') { // 주차장 카테고리가 클릭됐을 때
     
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = 'menu_selected';
        etcMenu.className = '';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(map);
        setetcMarkers(null);
        setbuffetMarkers(null);
        
        val = 'Q13';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	
        	for(var b = 0;b<deliveryMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(deliveryMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
//        				console.log("거리: "+distance);
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
		}
        
		}
    } else if (type === 'etc') { // 주차장 카테고리가 클릭됐을 때
     
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = 'menu_selected';
        buffetMenu.className = '';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(map);
        setbuffetMarkers(null);
      
        val = 'Q14';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<etcMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(etcMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
//        				console.log("거리: "+distance);
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
		}
		}
        
    } else if (type === 'buffet') { // 주차장 카테고리가 클릭됐을 때
     
    	
        // 주차장 카테고리를 선택된 스타일로 변경하고
        koreafoodMenu.className = '';
        chinafoodMenu.className = '';
        japanfoodMenu.className = '';
        snakMenu.className = '';
        chickenduckMenu.className = '';
        westernMenu.className = '';
        fastfoodMenu.className = '';
        bakingMenu.className = '';
        pubMenu.className = '';
        fusiondishMenu.className = '';
        cafeMenu.className = '';
        deliveryMenu.className = '';
        etcMenu.className = '';
        buffetMenu.className = 'menu_selected';
        
        // 주차장 마커들만 지도에 표시하도록 설정합니다
        setkoreafoodMarkers(null);
        setchinafoodMarkers(null);
        setjapanfoodMarkers(null);  
        setsnakMarkers(null);
        setchickenduckMarkers(null);
        setwesternfoodMarkers(null);
        setfastfoodMarkers(null);
        setbakingMarkers(null);
        setpubMarkers(null);
        setfusiondishMarkers(null);
        setcafeMarkers(null);
        setdeliveryMarkers(null);
        setetcMarkers(null);
        setbuffetMarkers(map);
        
        val = 'Q15';
        
        for(var a = 0;a<estateMarkers.length;a++)
		{
        	if(estateMarkers[a]!=null)
        		{
        		
        	for(var b = 0;b<buffetMarkers.length;b++)
        		{
        		var drawingFlag = false; // 선이 그려지고 있는 상태를 가지고 있을 변수입니다
        		var moveLine; // 선이 그려지고 있을때 마우스 움직임에 따라 그려질 선 객체 입니다
        		var clickLine // 마우스로 클릭한 좌표로 그려질 선 객체입니다
        		var distanceOverlay; // 선의 거리정보를 표시할 커스텀오버레이 입니다
        		var dots = {}; // 선이 그려지고 있을때 클릭할 때마다 클릭 지점과 거리를 표시하는 커스텀 오버레이 배열입니다.

        		// 지도에 클릭 이벤트를 등록합니다

        		    // 마우스로 클릭한 위치입니다 
        		    var clickPosition = estateMarkers[a].getPosition();

        		    // 지도 클릭이벤트가 발생했는데 선을 그리고있는 상태가 아니면
        		    if (!drawingFlag) {

        		        // 상태를 true로, 선이 그리고있는 상태로 변경합니다
        		        drawingFlag = true;
        		        
        		        // 클릭한 위치를 기준으로 선을 생성하고 지도위에 표시합니다
        		        clickLine = new kakao.maps.Polyline({
        		            map: map, // 선을 표시할 지도입니다 
        		            path: [clickPosition], // 선을 구성하는 좌표 배열입니다 클릭한 위치를 넣어줍니다
        		            strokeWeight: 3, // 선의 두께입니다 
        		            strokeColor: 'white', // 선의 색깔입니다
        		            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
        		            strokeStyle: 'solid' // 선의 스타일입니다
        		        });
        		        

        		        // 그려지고 있는 선의 좌표 배열을 얻어옵니다
        		        var path = clickLine.getPath();

        		        // 좌표 배열에 클릭한 위치를 추가합니다
        		        path.push(buffetMarkers[b].getPosition());
        		        
        		        // 다시 선에 좌표 배열을 설정하여 클릭 위치까지 선을 그리도록 설정합니다
        		        clickLine.setPath(path);

        		        var distance = Math.round(clickLine.getLength());
//        				console.log("거리: "+distance);
        		    }
        		           
        		        // 상태를 false로, 그리지 않고 있는 상태로 변경합니다
        		        drawingFlag = false;       
        		        
        		        if(distance<lengthInput)
        		        	{
        		        		estateMarkers[a].setMap(null);
        		        	}
        		
        		}
		}
        
		}
    }    
   
//    document.getElementById("indsMclsCd_value").innerHTML="업종코드="+val;

    }

} 


//지도타입 컨트롤의 지도 또는 스카이뷰 버튼을 클릭하면 호출되어 지도타입을 바꾸는 함수입니다
function setMapType(maptype) { 
    var roadmapControl = document.getElementById('btnRoadmap');
    var skyviewControl = document.getElementById('btnSkyview'); 
    if (maptype === 'roadmap') {
        map.setMapTypeId(kakao.maps.MapTypeId.ROADMAP);    
        roadmapControl.className = 'selected_btn';
        skyviewControl.className = 'btn';
    } else {
        map.setMapTypeId(kakao.maps.MapTypeId.HYBRID);    
        skyviewControl.className = 'selected_btn';
        roadmapControl.className = 'btn';
    }
}

// 지도 확대, 축소 컨트롤에서 확대 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
function zoomIn() {
    map.setLevel(map.getLevel() - 1);
}

// 지도 확대, 축소 컨트롤에서 축소 버튼을 누르면 호출되어 지도를 확대하는 함수입니다
function zoomOut() {
    map.setLevel(map.getLevel() + 1);
}function setCenter() {            
	// 이동할 위도 경도 위치를 생성합니다 
	var moveLatLon = new kakao.maps.LatLng(37.498004414546934, 127.02770621963765);

	// 지도 중심을 이동 시킵니다
	map.setCenter(moveLatLon);
	}

	function panTo() {
	// 이동할 위도 경도 위치를 생성합니다 
	var moveLatLon = new kakao.maps.LatLng(37.49855376049505, 127.0288259882454);

	// 지도 중심을 부드럽게 이동시킵니다
	// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
	map.panTo(moveLatLon);            
	}
	
	
	var count = 0;
	var clickedOverlay = null;
	var overlay = null;
	var overlays = [];
	
	koreafoodMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q01[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q01[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q01[3][count]);
		var $div = $('<div />').text(q01[5][count]);

		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);
		
	    kakao.maps.event.addListener(element, 'click', function() {
	    	if(clickedOverlay)
	    		{
	    		clickedOverlay.setMap(null);
	    		}
	    		overlay.setMap(map);
	    		clickedOverlay = overlay;
	    });
	    // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	    count++;
	});
	
	count = 0;
	
	chinafoodMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q02[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q02[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q02[3][count]);
		var $div = $('<div />').text(q02[5][count]);

		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);    
		overlays.push(overlay);

	    kakao.maps.event.addListener(element, 'click', function() {
	    	if(clickedOverlay)
	    		{
	    		clickedOverlay.setMap(null);
	    		}
	    		overlay.setMap(map);
	    		clickedOverlay = overlay;
	    });
	    count++;
	});
	
	count = 0;
	japanfoodMarkers.forEach(function(element){
	
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q03[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q03[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q03[3][count]);
		var $div = $('<div />').text(q03[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	count = 0;
	snakMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q04[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q04[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q04[3][count]);
		var $div = $('<div />').text(q04[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	count = 0;
	chickenduckMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q05[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q05[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q05[3][count]);
		var $div = $('<div />').text(q05[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	count = 0;
	westernfoodMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q06[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q06[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q06[3][count]);
		var $div = $('<div />').text(q06[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});

	count = 0;
	fastfoodMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q07[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q07[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q07[3][count]);
		var $div = $('<div />').text(q07[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	
	count = 0;
	bakingMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q08[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q08[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q08[3][count]);
		var $div = $('<div />').text(q08[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	
	count = 0;
	pubMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q09[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q09[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q09[3][count]);
		var $div = $('<div />').text(q09[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	
	count = 0;
	fusiondishMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q10[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q10[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q10[3][count]);
		var $div = $('<div />').text(q10[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	
	count = 0;
	cafeMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q12[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q12[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q12[3][count]);
		var $div = $('<div />').text(q12[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	
	count = 0;
	deliveryMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q13[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q13[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q13[3][count]);
		var $div = $('<div />').text(q13[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	
	count = 0;
	etcMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q14[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q14[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q14[3][count]);
		var $div = $('<div />').text(q14[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	
	count = 0;
	buffetMarkers.forEach(function(element){
		
		function closeOverlay() {
			overlay.setMap(null);     
		}
		
		var $wrap = $('<div class="wrap" />');
		var $info = $('<div class="info" />');
		var $title = $('<div class="title" />').text(q15[0][count]);
		var $close = $('<div class="close" title="닫기" />').click(closeOverlay);
		var $body = $('<div class="body" />');
		var $img = $('<div class="img" />');
		var $imgv = $('<img src="http://cfile181.uf.daum.net/image/250649365602043421936D" width="73" height="70">');
		var $desc = $('<div class="desc" />');
		var $ellipsis = $('<div class="ellipsis"/>').text(q15[8][count]);
		var $jibun = $('<div class="jibun ellipsis"/>').text(q15[3][count]);
		var $div = $('<div />').text(q15[5][count]);
		
		$wrap.append($info);
		$info.append($title).append($body);
		$title.append($close);
		$body.append($img).append($desc);
		$ellipsis.append(" &nbsp; ");
		$img.append($imgv);
		$desc.append($ellipsis).append($jibun).append($div);
		
		var content = $wrap[0];
		
		var overlay = new kakao.maps.CustomOverlay({
			content: content,
			map: map,
			position: element.getPosition()  
		});
		overlay.setMap(null);     
		overlays.push(overlay);

		kakao.maps.event.addListener(element, 'click', function() {
			if(clickedOverlay)
			{
				clickedOverlay.setMap(null);
			}
			overlay.setMap(map);
			clickedOverlay = overlay;
		});
		count++;
	});
	
//////////////////////////////////////////////////////////
	
	var drawingFlag = false; // 원이 그려지고 있는 상태를 가지고 있을 변수입니다
	var centerPosition; // 원의 중심좌표 입니다
	var drawingCircle; // 그려지고 있는 원을 표시할 원 객체입니다
	var drawingLine; // 그려지고 있는 원의 반지름을 표시할 선 객체입니다
	var drawingOverlay; // 그려지고 있는 원의 반경을 표시할 커스텀오버레이 입니다
	var drawingDot; // 그려지고 있는 원의 중심점을 표시할 커스텀오버레이 입니다

	var circles = []; // 클릭으로 그려진 원과 반경 정보를 표시하는 선과 커스텀오버레이를 가지고 있을 배열입니다

	// 지도에 클릭 이벤트를 등록합니다
	if(clickedOverlay==null)
		{
		
	kakao.maps.event.addListener(map, 'rightclick', function(mouseEvent) {
	        
	    // 클릭 이벤트가 발생했을 때 원을 그리고 있는 상태가 아니면 중심좌표를 클릭한 지점으로 설정합니다
	    if (!drawingFlag) {    
	        
	        // 상태를 그리고있는 상태로 변경합니다
	        drawingFlag = true; 
	        
	        // 원이 그려질 중심좌표를 클릭한 위치로 설정합니다 
	        centerPosition = mouseEvent.latLng; 

	        // 그려지고 있는 원의 반경을 표시할 선 객체를 생성합니다
	        if (!drawingLine) {
	            drawingLine = new kakao.maps.Polyline({
	                strokeWeight: 3, // 선의 두께입니다
	                strokeColor: 'white', // 선의 색깔입니다
	                strokeOpacity: 1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	                strokeStyle: 'solid' // 선의 스타일입니다
	            });    
	        }
	        
	        // 그려지고 있는 원을 표시할 원 객체를 생성합니다
	        if (!drawingCircle) {                    
	            drawingCircle = new kakao.maps.Circle({ 
	                strokeWeight: 1, // 선의 두께입니다
	                strokeColor: 'white', // 선의 색깔입니다
	                strokeOpacity: 0.5, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	                strokeStyle: 'solid', // 선의 스타일입니다
	                fillColor: 'white', // 채우기 색깔입니다
	                fillOpacity: 0.5 // 채우기 불투명도입니다 
	            });     
	        }
	        
	        // 그려지고 있는 원의 반경 정보를 표시할 커스텀오버레이를 생성합니다
	        if (!drawingOverlay) {
	            drawingOverlay = new kakao.maps.CustomOverlay({
	                xAnchor: 0,
	                yAnchor: 0,
	                zIndex: 1
	            });              
	        }
	    }
	    });

	// 지도에 마우스무브 이벤트를 등록합니다
	// 원을 그리고있는 상태에서 마우스무브 이벤트가 발생하면 그려질 원의 위치와 반경정보를 동적으로 보여주도록 합니다
	kakao.maps.event.addListener(map, 'mousemove', function (mouseEvent) {
	        
	    // 마우스무브 이벤트가 발생했을 때 원을 그리고있는 상태이면
	    if (drawingFlag) {

	        // 마우스 커서의 현재 위치를 얻어옵니다 
	        var mousePosition = mouseEvent.latLng; 
	        
	        // 그려지고 있는 선을 표시할 좌표 배열입니다. 클릭한 중심좌표와 마우스커서의 위치로 설정합니다
	        var linePath = [centerPosition, mousePosition];     
	        
	        // 그려지고 있는 선을 표시할 선 객체에 좌표 배열을 설정합니다
	        drawingLine.setPath(linePath);
	        
	        // 원의 반지름을 선 객체를 이용해서 얻어옵니다 
	        var length = drawingLine.getLength();
	        
	        if(length > 0) {
	            
	            // 그려지고 있는 원의 중심좌표와 반지름입니다
	            var circleOptions = { 
	                center : centerPosition, 
	            radius: length,                 
	            };
	            
	            // 그려지고 있는 원의 옵션을 설정합니다
	            drawingCircle.setOptions(circleOptions); 
	                
	            // 반경 정보를 표시할 커스텀오버레이의 내용입니다
	            var radius = Math.round(drawingCircle.getRadius()),   
	            content = '<div class="infocc">반경 <span class="numbercc">' + radius + '</span>m</div>';
	            
	            // 반경 정보를 표시할 커스텀 오버레이의 좌표를 마우스커서 위치로 설정합니다
	            drawingOverlay.setPosition(mousePosition);
	            
	            // 반경 정보를 표시할 커스텀 오버레이의 표시할 내용을 설정합니다
	            drawingOverlay.setContent(content);
	            
	            // 그려지고 있는 원을 지도에 표시합니다
	            drawingCircle.setMap(map); 
	            
	            // 그려지고 있는 선을 지도에 표시합니다
	            drawingLine.setMap(map);  
	            
	            // 그려지고 있는 원의 반경정보 커스텀 오버레이를 지도에 표시합니다
	            drawingOverlay.setMap(map);
	            
	        } else { 
	            
	            drawingCircle.setMap(null);
	            drawingLine.setMap(null);    
	            drawingOverlay.setMap(null);
	            
	        }
	    }     
	});     

	// 지도에 마우스 오른쪽 클릭이벤트를 등록합니다
	// 원을 그리고있는 상태에서 마우스 오른쪽 클릭 이벤트가 발생하면
	// 마우스 오른쪽 클릭한 위치를 기준으로 원과 원의 반경정보를 표시하는 선과 커스텀 오버레이를 표시하고 그리기를 종료합니다
	kakao.maps.event.addListener(map, 'click', function (mouseEvent) {

	    if (drawingFlag) {

	        // 마우스로 오른쪽 클릭한 위치입니다 
	        var rClickPosition = mouseEvent.latLng; 

	        // 원의 반경을 표시할 선 객체를 생성합니다
	        var polyline = new kakao.maps.Polyline({
	            path: [centerPosition, rClickPosition], // 선을 구성하는 좌표 배열입니다. 원의 중심좌표와 클릭한 위치로 설정합니다
	            strokeWeight: 3, // 선의 두께 입니다
	            strokeColor: 'white', // 선의 색깔입니다
	            strokeOpacity: 0, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	            strokeStyle: 'solid' // 선의 스타일입니다
	        });
	        
	        // 원 객체를 생성합니다
	        var circle = new kakao.maps.Circle({ 
	            center : centerPosition, // 원의 중심좌표입니다
	            radius: polyline.getLength(), // 원의 반지름입니다 m 단위 이며 선 객체를 이용해서 얻어옵니다
	            strokeWeight: 1, // 선의 두께입니다
	            strokeColor: 'white', // 선의 색깔입니다
	            strokeOpacity: 0.1, // 선의 불투명도입니다 0에서 1 사이값이며 0에 가까울수록 투명합니다
	            strokeStyle: 'solid', // 선의 스타일입니다
	            fillColor: 'white', // 채우기 색깔입니다
	            fillOpacity: 0.7  // 채우기 불투명도입니다 
	        });
	        
	        var radius = Math.round(circle.getRadius()), // 원의 반경 정보를 얻어옵니다
	            content = getTimeHTML(radius); // 커스텀 오버레이에 표시할 반경 정보입니다

	        
	        // 반경정보를 표시할 커스텀 오버레이를 생성합니다
	        var radiusOverlay = new kakao.maps.CustomOverlay({
	            content: content, // 표시할 내용입니다
	            position: rClickPosition, // 표시할 위치입니다. 클릭한 위치로 설정합니다
	            xAnchor: 0,
	            yAnchor: 0,
	            zIndex: 1 
	        });  

	        // 원을 지도에 표시합니다
	        circle.setMap(map); 
	        
	        // 선을 지도에 표시합니다
	        polyline.setMap(map);
	        
	        // 반경 정보 커스텀 오버레이를 지도에 표시합니다
	        radiusOverlay.setMap(map);
	        
	        // 배열에 담을 객체입니다. 원, 선, 커스텀오버레이 객체를 가지고 있습니다
	        var radiusObj = {
	            'polyline' : polyline,
	            'circle' : circle,
	            'overlay' : radiusOverlay
	        };
	        
	        // 배열에 추가합니다
	        // 이 배열을 이용해서 "모두 지우기" 버튼을 클릭했을 때 지도에 그려진 원, 선, 커스텀오버레이들을 지웁니다
	        circles.push(radiusObj);   
	    
	        // 그리기 상태를 그리고 있지 않는 상태로 바꿉니다
	        drawingFlag = false;
	        
	        // 중심 좌표를 초기화 합니다  
	        centerPosition = null;
	        
	        // 그려지고 있는 원, 선, 커스텀오버레이를 지도에서 제거합니다
	        drawingCircle.setMap(null);
	        drawingLine.setMap(null);   
	        drawingOverlay.setMap(null);
	    }
	});    
	    
	}
	// 지도에 표시되어 있는 모든 원과 반경정보를 표시하는 선, 커스텀 오버레이를 지도에서 제거합니다
	function removeCircles() {         
	    for (var i = 0; i < circles.length; i++) {
	        circles[i].circle.setMap(null);    
	        circles[i].polyline.setMap(null);
	        circles[i].overlay.setMap(null);
	    }         
	    circles = [];
	}

	// 마우스 우클릭 하여 원 그리기가 종료됐을 때 호출하여 
	// 그려진 원의 반경 정보와 반경에 대한 도보, 자전거 시간을 계산하여
	// HTML Content를 만들어 리턴하는 함수입니다
	function getTimeHTML(distance) {

	    // 도보의 시속은 평균 4km/h 이고 도보의 분속은 67m/min입니다
	    var walkkTime = distance / 67 | 0;
	    var walkHour = '', walkMin = '';

	    // 계산한 도보 시간이 60분 보다 크면 시간으로 표시합니다
	    if (walkkTime > 60) {
	        walkHour = '<span class="numbercc">' + Math.floor(walkkTime / 60) + '</span>시간 '
	    }
	    walkMin = '<span class="numbercc">' + walkkTime % 60 + '</span>분'

	    // 자전거의 평균 시속은 16km/h 이고 이것을 기준으로 자전거의 분속은 267m/min입니다
	    var bycicleTime = distance / 227 | 0;
	    var bycicleHour = '', bycicleMin = '';

	    // 계산한 자전거 시간이 60분 보다 크면 시간으로 표출합니다
	    if (bycicleTime > 60) {
	        bycicleHour = '<span class="numbercc">' + Math.floor(bycicleTime / 60) + '</span>시간 '
	    }
	    bycicleMin = '<span class="numbercc">' + bycicleTime % 60 + '</span>분'

	    // 거리와 도보 시간, 자전거 시간을 가지고 HTML Content를 만들어 리턴합니다
	    var content = '<ul class="infocc">';
	    content += '    <li>';
	    content += '        <span class="labelcc">반경</span><span class="numbercc">' + distance + '</span>m';
	    content += '    </li>';
	    content += '    <li>';
	    content += '        <span class="labelcc">도보</span>' + walkHour + walkMin;
	    content += '    </li>';
	    content += '    <li>';
	    content += '        <span class="labelcc">자전거</span>' + bycicleHour + bycicleMin;
	    content += '    </li>';
	    content += '</ul>'

	    return content;
	}
	

	var mapTypes = {traffic :  kakao.maps.MapTypeId.TRAFFIC};

		// 체크 박스를 선택하면 호출되는 함수입니다
		function setOverlayMapTypeId() {
		    var chkTraffic = document.getElementById('chkTraffic')
		      
		    // 지도 타입을 제거합니다
		    for (var type in mapTypes) {
		        map.removeOverlayMapTypeId(mapTypes[type]);    
		    }

		    // 교통정보 체크박스가 체크되어있으면 지도에 교통정보 지도타입을 추가합니다
		    if (chkTraffic.checked) {
		        map.addOverlayMapTypeId(mapTypes.traffic);    
		    }
		}
		    
		  
		    
		