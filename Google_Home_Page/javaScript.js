$(document).ready(function(){

  $('div').hover(function(){
        $('active').mouseenter(function(){
            $(this).addClass('highlight');}
    },
    function(){
        $('active').mouseleavefunction(){
        $(this).removeClass('highlight');
    }
});