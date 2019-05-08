$(function() {
		// solving the active menu problem
		switch(menu){
				
				case 'About Us':
					$('#about').addClass('active');
					break;
					
				case 'Contact Us':
					$('#contact').addClass('active');
					break;
				
				case 'All Products':
					$('#products').addClass('active');
					break;
				
				default:
					$('#products').addClass('active');
					$('#a_'+menu).addClass('active');
					break;
		}
});