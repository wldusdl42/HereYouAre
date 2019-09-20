jQuery(document).ready(function($) {
    var sliders = [];
    var delay = 4000;
    var timerId;
    var remaining;
    var start;
    var current_playing;
    
    
    
    
    var boxs = [];
    var delay = 4000;
    var timerId;
    var remaining;
    var start;
    var current_playing;
    // restore user slider img and title or descriptions
    $("#nameBoard-box").find("p").each(function() {
        this.className += " box-hide";
        boxs.push({html: this})
    });
    // initialize the siliders
    function box_init() {
        $("#nameBoard-box").css('display', 'block');
        $("#nameBoard-box").append("<div id='box-btn'><a class='prev-btn'><i class='arr-left'></i></a><a class='next-btn'><i class='arr-right'></i></a></div>")
        box_display(boxs, 0);
        box_loop(boxs, -1, delay);
    }
    // display 5 img at a time
    function box_display(A, i) {
        if (i < 0) {
            i = A.length -1;
        }
        current_playing = i;
        // mute the one img before
        A[(i + A.length + 3) % A.length].html.className += " box-hide";
        // display 5 img after the muted one
        A[(i + A.length) % A.length].html.className = "box-middle";
        A[(i + A.length - 1) % A.length].html.className = "box-left-1";
        A[(i + A.length - 2) % A.length].html.className = "box-left-2";
        A[(i + A.length + 1) % A.length].html.className = "box-right-1";
        A[(i + A.length + 2) % A.length].html.className = "box-right-2";

    }
    // slider
    function box_loop(A, i, remaining) {
        start = new Date();
        if (i < 0) {
            i = A.length -1;
        }
        timerId = setTimeout(function() {
            box_display(A, i);
            box_loop(A, i - 1, delay);
        }, remaining);
    }
    
    
    
    
    
    // restore user slider img and title or descriptions
    $("#rotate-slider").find("img").each(function() {
        this.className += " slider-hide";
        sliders.push({html: this})
    });
    // initialize the siliders
    function slider_init() {
        $("#rotate-slider").css('display', 'block');
        $("#rotate-slider").append("<div id='slider-btn'><a class='prev-btn'><i class='arr-left'></i></a><a class='next-btn'><i class='arr-right'></i></a></div>")
        slider_display(sliders, 0);
        slider_loop(sliders, -1, delay);
    }
    // display 5 img at a time
    function slider_display(A, i) {
        if (i < 0) {
            i = A.length -1;
        }
        current_playing = i;
        // mute the one img before
        A[(i + A.length + 3) % A.length].html.className += " slider-hide";
        // display 5 img after the muted one
        A[(i + A.length) % A.length].html.className = "slider-middle";
        A[(i + A.length - 1) % A.length].html.className = "slider-left-1";
        A[(i + A.length - 2) % A.length].html.className = "slider-left-2";
        A[(i + A.length + 1) % A.length].html.className = "slider-right-1";
        A[(i + A.length + 2) % A.length].html.className = "slider-right-2";

    }
    // slider
    function slider_loop(A, i, remaining) {
        start = new Date();
        if (i < 0) {
            i = A.length -1;
        }
        timerId = setTimeout(function() {
            slider_display(A, i);
            slider_loop(A, i - 1, delay);
        }, remaining);
    }

     $("#rotate-slider").hover(function() {
//         window.clearTimeout(timerId);
//         remaining = delay - (new Date() - start);
         $("#slider-btn").show();
         $("#slider-btn .prev-btn").click(function() {
             current_playing++;
             slider_display(sliders, current_playing);
             box_display(boxs, current_playing);
         });
         $("#slider-btn .next-btn").click(function() {
             current_playing--;
             slider_display(sliders, current_playing);
             box_display(boxs, current_playing);
         });
     }, function() {
         slider_loop(sliders, current_playing, remaining);
         $("#slider-btn").hide();
         $("#slider-btn .prev-btn").unbind("click");
         $("#slider-btn .next-btn").unbind("click");
         
         
         box_loop(boxs, current_playing, remaining);
         $("#box-btn").hide();
         $("#box-btn .prev-btn").unbind("click");
         $("#box-btn .next-btn").unbind("click");
     });


    // launch slider
     box_init();
    slider_init();

});