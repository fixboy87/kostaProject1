
var _ = jQuery;

_( function() {
    _( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 100,
      values: [ 0, 0 ],
      slide: function( event, ui ) {
        _( "#amount" ).val( "" + ui.values[ 0 ] + "만원" + " - " + ui.values[ 1 ] + "만원" );
      }
    });
    _( "#amount" ).val(  _( "#slider-range" ).slider( "values", 0 ) +
       _( "#slider-range" ).slider( "values", 1 ) );
  } );
 

 

var check = false;
	_(document).ready(function() {
		_('#price_range').hide();
		_('#max_price').on("click", function() {
			if (check == false) {
				_('#price_range').hide();
				check = true;
			} else {
				_('#price_range').show();
				check = false;

			}
		});
	});
