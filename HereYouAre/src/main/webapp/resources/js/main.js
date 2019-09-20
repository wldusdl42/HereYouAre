$(function(){
    var duration = 300;

    var $aside = $('.sidebar > aside');
    var $asidButton = $aside.find('button')
        .on('click', function(){
            $aside.toggleClass('open');
            if($aside.hasClass('open')){
              console.log("open sidebar");
                $aside.stop(true).animate({left: '-70px'}, duration, 'easeOutBack');
                $asidButton.find('img').attr('src', './resources/img/btn_close.png');
            }
            else{
              console.log("close sidebar");
                $aside.stop(true).animate({left: '-350px'}, duration, 'easeInBack');
                $asidButton.find('img').attr('src', './resources/img/btn_open.png');
            };
        });

});
