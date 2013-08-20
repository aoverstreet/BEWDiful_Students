 var currentYear = (new Date).getFullYear();

$(function()  {

	//date picker
	$("#pickup_date").datepicker({
		changeMonth: true,
		changeYear: true
	});	

	//if it has an errors
	$('#form_errors').modal('show');
	
	
	
	//footer  | date
	$("#year").text( (new Date).getFullYear() );
	
	
	//footer  | hover
	//bubble on hover
	var bubble_bg =  $('#bubble_message_bg');
	var bubble_message = $('span#bubble_message');
	
	//on load, hide bubble
	hide_bubble();

	//hide bubble + message
	function hide_bubble() {
		bubble_bg.hide();
		bubble_message.hide();
	};
	
	//show bubble + message
	function show_bubble() {
		bubble_bg.show();
		bubble_message.show();
	};

	//my photo	
	$('#adam').on({
		mouseenter: function(){
			show_bubble();
		},
		mouseleave: function(){
			hide_bubble();
		}
	});
	
	
	
	function get_date() {

	//time of day and date	
	//var image = $('#hello img');
	var m = 'morning';
	var a = 'afternoon'; 
	var e= 'evening';
	
	//var imgpath = 'img/header/time/'; 
	
	var now = new Date
	
	if (now.getHours() < 12) {
			
			$("span#message").html('Good Morning')
			
			/*image.attr({
				'id': m,
				'src' : imgpath + m +'.png',
				'alt' : m
			}); */
			
		} else if (now.getHours() < 17) {
			$("span#message").html('Good Afternoon')
			
			/*image.attr({
				'id': a,
				'src' : imgpath + a +'.png',
				'alt' : a
			}); */
			
		} else {
			$("span#message").html('Good Evening')
			
			/*image.attr({
				'id': e,
				'src' : imgpath + e +'.png',
				'alt' : e
			}); */
	}
	
}
		
get_date();

//
var availableTags = [
		"Alabama", 
		"Alaska", 
		"Arizona", 
		"Arkansas", 
		"California", 
		"Colorado", 
		"Connecticut", 
		"D.C.", 
		"Delaware", 
		"Florida", 
		"Georgia",
		"Hawaii",
		"Idaho",
		"Illinois",
		"Indiana",
		"Iowa",
		"Kansas", 
		"Kentucky", 
		"Louisiana",
		"Maine",
		"Maryland", 
		"Massachusetts", 
		"Michigan", 
		"Minnesota", 
		"Mississippi", 
		"Missouri", 
		"Montana", 
		"Nebraska", 
		"Nevada", 
		"New Hampshire", 
		"New Mexico", 
		"New York", 
		"New Jersey", 
		"North Carolina", 
		"North Dakota", 
		"Ohio", 
		"Oklahoma", 
		"Oregon", 
		"Pennsylvania", 
		"Rhode Island", 
		"South Carolina", 
		"South Dakota", 
		"Tennessee",
		"Texas", 
		"Utah", 
		"Vermont", 
		"Virginia", 
		"Washington", 
		"West Virginia", 
		"Wisconsin", 
		"Wyoming" 
    ];
    
  $( "#state" ).autocomplete({
      source: availableTags
    });


}); //closed jquery