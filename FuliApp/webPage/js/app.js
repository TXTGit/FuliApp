$(function($) {
	$('#mySwipe').Swipe({
		auto: 6000,
		callback: function(pos) {
		  var bullets=$('#swipeNav li');
		  var i = bullets.length;
		  while (i--) {
			bullets[i].className = ' ';
		  }
		  bullets[pos].className = 'on';
		}
	})
	var $fixBar = $('#fixBar');
	var $showFixBar = $('#showFixBar');
	var $hideFixBar = $('#hideFixBar');
	$showFixBar.on('click', function(e) {
		$fixBar.animate({
		  right: '0'
		}, 350, 'ease-out');
		$showFixBar.hide();
		$hideFixBar.show();
	});
	$hideFixBar.on('click', function(e) {
		$fixBar.animate({
		  right: '-101px'
		}, 350, 'ease-out');
		$hideFixBar.hide();
		$showFixBar.show();
	});
})