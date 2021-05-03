/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){
    $(".boxFilterSearch .title").click(function(){
        if(!$(this).parents(".boxFilterSearch").hasClass("active")){
            $(this).parents(".boxFilterSearch").addClass("active");
        }
        else{
            $(this).parents(".boxFilterSearch").removeClass("active");
        }
    });
/*    $(".boxFilterSearch").mnfixed({
    	break:991,
    	limit : '.mda-more-box',
    	top:75,
    });
*/  
    var tourprice = $('#TourPrice').val();
    if (tourprice ==''){
        var cuttourprice1 = 0;
        var cuttourprice2 = 80000000;
    } else  {
    var newtourprice = tourprice.replace(/ đ/g, "");
    var cuttourprice = newtourprice.split(" - ");
    var cuttourprice1 = cuttourprice[0];
    var cuttourprice2 = cuttourprice[1];
    }
    $( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 80000000,
      step: 2000000,
      values: [ cuttourprice1, cuttourprice2 ],
      slide: function( event, ui ) {
        $( "#TourPrice" ).val( ui.values[ 0 ] + " đ - " + ui.values[ 1 ] + " đ" );
      }
    });
    $( "#TourPrice" ).val( $( "#slider-range" ).slider( "values", 0 ) +
      " đ - " + $( "#slider-range" ).slider( "values", 1 ) + " đ");
    
});