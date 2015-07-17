// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
// require turbolinks
//= require_tree .

$(document).ready(function(){

	var myArray = ["Oprah Winfrey", "Bob Johnson", "Michael Jordan", "Magic Johnson", "Jay Z", "Beyonce", "Will Smith", "Sean 'Diddy' Combs", "Jada Pinkett-Smith", "Morgan Freeman", "Samuel L. Jackson", "Kobe Bryant", "Carmelo Anthony", "Kevin Durant", "Derrick Rose", "Ronald 'Slim' Williams", "Bryan 'Baby' Williams", "Nicki Minaj", "Rihanna", "Kevin Hart", "Daymond John", "Tyler Perry", "Stevie Wonder", "Quincy Jones", "Russell Simmons", "Dr. Dre", "Steve Harvey", "Chris Rock", "LeBron James", "Halle Berry", "Denzel Washington", "Spike Lee", "Ice Cube", "Drake", "50 Cent", "Lil’ Wayne", "Kanye West", "Queen Latifah", "Venus Williams", "Serena Williams", "Steve Stoute", "Mona Scott", "Floyd Mayweather", "Shaquille O’Neal", "Iyanla Vanzant", "Susan Taylor", "Kirk Franklin", "Pharrell Williams", "Alicia Keys", "Whoopi Goldberg", "Angela Bassett", "Jamie Foxx", "Lee Daniels", "Eddie Murphy", "Funkmaster Flex", "Tom Joyner", "Swizz Beatz", "Timbaland", "Don Thompson", "John W. Thompson", "Kenneth C. Frazier", "Kenneth I. Chenault", "Roger W. Ferguson Jr.", "Ursula M. Burns", "Aylwin Lewis", "Clarence Otis Jr.", "Franklin Delano Raines", "Lloyd D. Ward", "Richard Dean Parsons", "Rodney O’Neal", "Ronald A. Williams", "Stanley O’Neal", "Charles E. Phillips Jr.", "Myron Gray", "Rosalind G. Brewer", "Prince Fielder", "Torii Hunter", "CC Sabathia", "David Price", "Andrew McCutchen", "Joshua Copeland", "Channing Dungey", "Paula Madison", "Christina Norman", "Salaam Coleman-Smith", "Pearlena Igbokwe", "Paxton Baker", "Odetta Watkins", "Valerie Watts Meraz", "Richard Gay", "Devon Franklin", "T. Troy Dixon", "Amy Ellis-Simon", "Alphonse 'Buddy' Fletcher Jr.", "D. Steve Boland", "Napoleon Brandford, III", "Eddie C. Brown", "Tina Byles Williams", "Vicki L. Fuller", "Edith W. Cooper"];

// 	  var numberOfColumns = 3;
// 		var arrayLength = myArray.length;
// 		var namesPerColumn = Math.ceil(arrayLength/numberOfColumns);

// 		for(var col=0; col<numberOfColumns; col++){
// 			// we create a div for each column and
// 			// append 1/3 of the names to each.
// 			var container = $('<div class="col" />');
			
	
// 	// In out loop we have to check the namesPerCol
// 	// AND the total length of the array for when the
// 	// division is not an integer i.e. 10/3
// 	for(
// 		var i = namesPerColumn*col; 
// 		i < (namesPerColumn*col + namesPerColumn) && i < arrayLength; 
// 		i++
// 	){
// 		container.append('<p>' + myArray[i] + '</p>');
// 	}
	
// 	// Once we added all the elements
// 	// to the container, we append it
// 	// to the #manual-way div
// 	$('#3columns').append(container);
// }

// The CSS way...

// We put everything in one div
// and let CSS do the magic
	var cssDiv = $("#3columns");
	for(var i=0; i<myArray.length; i++){
	cssDiv.append('<li>' + myArray[i] + '</p>');
}

	$('[data-removable]').on("ajax:complete", function(e){
		$(e.currentTarget).closest('div').fadeOut();
	});


});