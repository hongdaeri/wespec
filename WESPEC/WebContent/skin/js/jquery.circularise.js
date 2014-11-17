/*
	jquery.circularise.js v1.0
	
	Website : http://circularise.jhp.io
	Author : Jiho Park
	E-mail : uk_admin@jprogramme.com
	
	MIT LICENCE
	
	Copyright (c) 2014 j'programme.

	Permission is hereby granted, free of charge, to any person
	obtaining a copy of this software and associated documentation
	files (the "Software"), to deal in the Software without
	restriction, including without limitation the rights to use,
	copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the
	Software is furnished to do so, subject to the following
	conditions:
	
	The above copyright notice and this permission notice shall be
	included in all copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
	EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
	OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
	NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
	HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
	WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
	FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
	OTHER DEALINGS IN THE SOFTWARE.
	
	
*/
(function ( $ ) {
 
    $.fn.circularise = function(imageWidth,imageHeight, otherArg3) {
		var $div;
		var $img;
		
		var dActiveClass;
		var ikeepRatio;
		var iwidth, owidth;
		var iheight, oheight;
		var icentreX, icentreY;
		
		var optionObj, imgPropObj;
		
		
		
		switch(typeof imageWidth) {
			
			
			case "object":
				optionObj = imageWidth;
				imageWidth =  optionObj.width;
				imageHeight = typeof optionObj.height == "undefined" ? imageWidth : optionObj.height;
				ikeepRatio = typeof optionObj.keepRatio == "undefined" ? false : optionObj.keepRatio ;
				icentreX = typeof optionObj.centreX == "undefined" ? "0px" : optionObj.centreX;
				icentreY = typeof optionObj.centreY == "undefined" ? "0px" : optionObj.centreY;
				dActiveClass = typeof optionObj.activeClass == "undefined" ? "" : optionObj.activeClass;

			case "undefined":
				if(typeof optionObj == "undefined") {
					ikeepRatio = false;
					icentreX = "0px";
					icentreY = "0px";
					dActiveClass = "";
				}
			default:
				switch(imageWidth) {
					case "option":
						if($(this).hasClass('circularise-applied-image')) {
							if(imageHeight == "width" || imageHeight == "height" || imageHeight == "both") { 
					
							
								if(typeof otherArg3 == "undefined") {
									if(imageHeight == "height") {
										return $(this).height();
									}
									return $(this).width();
									
								} else {
									if(imageHeight == "both") { 
										$(this).css({
											width:	otherArg3,
											height:	otherArg3
										});
										
										$(this).parent().css({
											width:	otherArg3,
											height:	otherArg3
										});
									} else {
										$(this).css(imageHeight,otherArg3);
										$(this).parent().css(imageHeight,otherArg3);
									}
									return this;
								}
								
							
							} else if(imageHeight == "centreX" ||imageHeight == "centreY" ) {
								if(typeof otherArg3 != "undefined") {
									$(this).css('margin-' + (imageHeight == "centreX" ? "left" : "top"),otherArg3);
									return this;
								}else {
									return $(this).css('margin-' + (imageHeight == "centreX" ? "left" : "top"));
								}
							} 
						
						}
					
					break;
					case "destroy":		
						$img = $($(this));
						if($(this).hasClass('circularise-applied-image')) {
							$div = $(this).parent();
							$img = $($(this).get(0).outerHTML).removeClass('circularise-applied-image');
							$div.html('').replaceWith($img);
							
						}
						return $img;
					default:
					
						$div = $('<div></div>');
						$img = $($(this).get(0).outerHTML);
						
						owidth = $img.width() ? $img.width() : 100;
						oheight = $img.height() ? $img.height() : 100;
	
						iwidth = typeof imageWidth == "undefined" ? owidth + "px" : imageWidth;
						iheight = typeof imageHeight == "undefined" ? oheight +  "px" : imageHeight;
						
						imgPropObj = {
							marginLeft:icentreX,
							marginTop:icentreY,
							display:"block"
						}
						
						
						
						if(!ikeepRatio) {
							imgPropObj.height = iheight;
							imgPropObj.width = iwidth;
							
						} else {
							if(iwidth > iheight) { 
								imgPropObj.width = iwidth;
								
							} else {
								imgPropObj.height = iheight;
							}
						}
						
						
						
						$img.css(imgPropObj);
						
						$img.addClass('circularise-applied-image');
						
						$div.append($img);
						
						$div.data('keepRatio',ikeepRatio);
						
						$div.css({
							width:iwidth,
							height:iheight,
							overflow:"hidden",
							borderRadius:"50%"
						});
						
						$div.addClass('circularise-applied' + (dActiveClass != "" ? " " + dActiveClass : ""));
						
						if($img.attr('id')) {
							$div.attr('id',"_circular_layout_" + $img.attr('id'));
						}
						
						$(this).replaceWith($div);
						
						return $div;
					
						
				}
			
		}
    };

 
}( jQuery ));