/**
 * 
 */

console.clear();

$('.part-5>.head>ul>li').click(function(){
    var $this = $(this);
    var $part5 = $this.closest('.part-5');
    var $current = $part5.find('>.head>ul>li.active');
   
    
    $current.removeClass('active');
    $this.addClass('active');
    
    var index = $this.index();
    $part5.find('>.content>div.active').removeClass('active');
    $part5.find('>.content>div').eq(index).addClass('active');
    
});




$('.part-5 .my-1 > .owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
});