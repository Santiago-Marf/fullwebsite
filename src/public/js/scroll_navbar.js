$(window).scroll(function() {
    if ($("#navbar").offset().top > 200) {
        $("#navbar").css({
            "width": "100%",
            "background": "#30497B",
            "border-bottom": "3px solid #37538c"
        });
        $(".navbar-brand, .nav-link").css({
        "color": "#ffffff",
        "text-shadow": "none"
        });
    } else {
        $("#navbar").css({
            "width": "100%",
            "background": "transparent",
            "border-bottom": "none"
        });
        $(".navbar-brand, .nav-link").css({
            "color": "#37538c",
            "text-shadow": "2px 2px 3px rgba(255, 255, 255, 0.8)"
        });
    }
  });