
$(document).ready(function() {
	
	// 1. 财产一切险 > 标准保障 > 保费
	$('#cpyqxbz').live('change', function() {
		
		// 1. 保额≤100万元   0.5 年费率（ ‰）
		if( parseFloat($(this).val()) <= 100){
			console.info(parseFloat($(this).val()) * 10000);
		}
		
		
		// 2. 100万元＜保额≤500万元   0.4
		
		// 3. 500万元＜保额≤1000万元    0.3
		
		// 4. 1000万元＜保额≤5000万元   0.15
		
		// 5. 保额>5000万元    0.1
		
	})
	
	// 1. 财产一切险 > 扩展地震 > 
	$('#cpyqxkz').live('click', function() {
	    // do something
	})
	// 1. 财产一切险 > 扩展地震 > 保费
	$('#cpyqxkzdz').live('change', function() {
		if($('#cpyqxkz').is(':checked')) { //选中状态
		   
		}
		
	})
	
	
	
	
	
})