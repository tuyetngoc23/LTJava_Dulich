/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$("#login-button").click(function(event){
     event.preventDefault();
   
   $('form').fadeOut(500);
   $('.wrapper').addClass('form-success');
});
