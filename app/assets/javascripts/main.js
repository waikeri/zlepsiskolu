$(document).ready(function () {
    //$('.nav .nav-item a').click(function (e) {
    //    e.preventDefault()
    //    $(this).tab('show');
    //})
    var owl =  $('.owl-carousel').owlCarousel({
        loop: false,
        margin: 10,
        responsive: {
            0: {
                items: 1
            },
            768: {
                items: 3
            },
            992: {
                items: 4
            },
            //1200: {
            //    items: 5
            //}
        }
    });
    $('#carousel-next').click(function() {
        owl.trigger('next.owl.carousel');
    })
    $('#carousel-prev').click(function() {
        owl.trigger('prev.owl.carousel');
    })
    $('.owl-carousel .item h4').fontFlex(18, 36, 50);

    $('#voting .panel .upvote').click(function(e){
        alert("hai");
        e.stopPropagation();
        $(this).closest('form').submit();
    });
});
