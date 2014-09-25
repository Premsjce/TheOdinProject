$(document).ready(function(){
		SimpleDesign();
		ChangeColors();
		Trails();
		Transperency();
});

var drawGrid = function(SizofBox){
	var size = 960/SizofBox;
	for(var i = 1; i <= SizofBox; i++){
		for(var j = 1; j <= SizofBox; j++){
			$('.GridContainer').append("<div class='square'></div>");
			}
		}	
	$('.square').css("height",size);
	$('.square').css("width",size);
};

var resetGrid = function(){
	$(".GridContainer").empty();
	var SizofBox = prompt("How big the Grid size you want ???");
	drawGrid(SizofBox);
	$('.square').css("background-color","#FFFFFF");
};

var getColor =  function(){
	str = "0123456789ABCDEF"
	color = "#"
	for(var i = 0; i < 6; i++){
		var n = Math.floor(Math.random()*16);
		color += str.substring(n,n+1);
	}
	console.log(color);
	return color;
};


var SimpleDesign = function(){
	$(".SD").click(function(){
		resetGrid();
		var color = getColor();
			$('.square').mouseenter(function(){
				$(this).css("background-color",color);
			});

	});
};

var ChangeColors = function(){
	$(".CC").click(function(){
		resetGrid();
			$(".square").mouseenter(function(){
				$(this).css("background-color",getColor());
			});

	});
};


var Trails = function(){
	$(".Trails").click(function(){
		resetGrid();
		var color = getColor();
		$('.square').mouseenter(function(){
			$(this).css("background-color",color);
			$(this).css("opacity","1");
			$(this).fadeTo("slow",0);
		});

	});
};

var Transperency = function(){
	$(".Trans").click(function(){
		resetGrid();
		var color = getColor();
		$(".square").css("background-color",color);
		$(".square").mouseenter(function(){ 
			var currentOpa = $(this).css("opacity");			 
			if(currentOpa >= 0.1){ 
 				$(this).css("opacity", currentOpa - 0.1)				 
 			} 
 			else { 
 				$(this).css("opacity", "0"); 
 			} 
 		});

	});
};

//just a comment for commiting the change to github