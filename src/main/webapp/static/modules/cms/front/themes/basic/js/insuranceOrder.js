
$(document).ready(function() {
	
	//购买点击--重新计算总额
	$(".buyCheckBox").live("click",function(){
		sumTotal();
	})
	//合计保费--重新计算总额
	$(".total").find("span").live("DOMNodeInserted",function(){
		sumTotal();
	})
	//重新计算总额
	function sumTotal(){
		//计算总数
		var totalSum = 0;
		var buyNum = 0;
		console.info(result);
		//投保额度调整
		$(".insurance-box").each(function(){
			if(!$(this).find(".buyCheckBox").is(':checked')) { //选中状态
				return;
			}
			buyNum++;
			//统计保费
			var totalTemp = parseFloat($(this).find(".total span").text());
			totalSum = totalSum + totalTemp;
		
			//统计保额
			//子项统计出来之后保费相加
			$(this).find(".content .list").each(function(){
				
			})

		})
		
		$("#hjzbf").text(totalSum);

		
		//计算优惠
		var result = totalSum;
		//投保总数调整
		if(buyNum>4){//4个险种以上，0.95
			result = Number(result * 0.95).toFixed(2);
		}
		// 1. 50万元<=保额<100万元  1
		//获取保费
		if( 50 <= result < 100){
		} else if( 100 <= result < 150){// 2. 100万元＜保额≤500万元   0.98
			result = Number(result * 0.98).toFixed(2);
		} else if( 150 <= result < 250){// 3. 100万元＜保额≤500万元   0.95
			result = Number(result * 0.95).toFixed(2);
		}else if ( 250 <= result){// 4. 250万元以上             0.9
			result = Number(result * 0.9).toFixed(2);
		}
		$("#hjzbfyhj").text(result);
	}


	// 1. 财产一切险 > 标准保障 > 保费
	$('#cpyqxbz').live('change', function() {
		
		if($(this).val() == ''){
			toTotal("#cpyqxbz","#cpyqxbf",0.0001);
			return;
		}
		
		var cpyqxbzMun = parseFloat($(this).val());
		
		// 1. 保额≤100万元   0.5 年费率（ ‰）0.00005 四个零
		if( cpyqxbzMun <= 100){
			toTotal("#cpyqxbz","#cpyqxbf",0.0005);
			return;
		}
		
		// 2. 100万元＜保额≤500万元   0.4
		if( 100 < cpyqxbzMun <= 500){
			toTotal("#cpyqxbz","#cpyqxbf",0.0004);
			return;
		}
		
		// 3. 500万元＜保额≤1000万元    0.3
		if( 500 < cpyqxbzMun <= 1000){
			toTotal("#cpyqxbz","#cpyqxbf",0.0003);
			return;
		}
		
		// 4. 1000万元＜保额≤5000万元   0.15
		if( 1000 < cpyqxbzMun <= 5000){
			toTotal("#cpyqxbz","#cpyqxbf",0.00015);
			return;
		}
		
		// 5. 保额>5000万元    0.1
		if( cpyqxbzMun > 5000){
			toTotal("#cpyqxbz","#cpyqxbf",0.0001);
			return;
		}
		
	})
	
	// 1. 财产一切险 > 扩展地震 > 
	$('#cpyqxkz').live('click', function() {
	    // do something
		$('#cpyqxkzdz').change();
	})
	// 1. 财产一切险 > 扩展地震 > 保费
	$('#cpyqxkzdz').live('change', function() {
		
		if($('#cpyqxkz').is(':checked')) { //选中状态
			
			if($(this).val() == ''){
				toTotal("#cpyqxkzdz","#cpyqxkzdzbf",0.00055);
				return;
			}
			var cpyqxkzdzMun = parseFloat($(this).val());
			
			// 1. 保额≤100万元  0.55 年费率（ ‰）0.0005 三个零
			if( cpyqxkzdzMun <= 100){
				toTotal("#cpyqxkzdz","#cpyqxkzdzbf",0.00055);
				return;
			}
			
			// 2. 100万元＜保额≤500万元  0.44
			if( 100 < cpyqxkzdzMun <= 500){
				toTotal("#cpyqxkzdz","#cpyqxkzdzbf",0.00045);
				return;
			}
			
			// 3. 500万元＜保额≤1000万元    0.33
			if( 500 < cpyqxkzdzMun <= 1000){
				toTotal("#cpyqxkzdz","#cpyqxkzdzbf",0.00035);
				return;
			}
			
			// 4. 1000万元＜保额≤5000万元  0.165
			if( 1000 < cpyqxkzdzMun <= 5000){
				toTotal("#cpyqxkzdz","#cpyqxkzdzbf",0.000165);
				return;
			}
			
			// 5. 保额>5000万元    0.11
			if( cpyqxkzdzMun > 5000){
				toTotal("#cpyqxkzdz","#cpyqxkzdzbf",0.00011);
				return;
			}
			
		}
	})
	
	// 产品一切险合计总保费
	$('#cpyqxkzdz,#cpyqxbz').live('change', function() {
		var cpyqxhjbf=0;
		var cpyqxbf = parseFloat($("#cpyqxbf").html());
		var cpyqxkzdzbf = parseFloat($("#cpyqxkzdzbf").html());
		if($('#cpyqxkz').is(':checked')) {
			cpyqxhjbf = cpyqxbf + cpyqxkzdzbf;
		}else{
			cpyqxhjbf = cpyqxbf;
		}
		$("#cpyqxhjbf").html(Number(cpyqxhjbf).toFixed(2));
		//$("#cpyqxhjbf").html(Number(cpyqxhjbf).toFixed(2));
	})
	
	
	//==================公众责任险start=================
	
	$("#gzzrxbf").html(Number(parseFloat($('#gzzrxbe').val()) * 10000 * 0.001).toFixed(2));
	gzzrxhjbf();
	// 保费
	$('#gzzrxbe').live('change', function() {
		
		var gzzrxbeMun = parseFloat($('#gzzrxbe').val());
		if(gzzrxbeMun==50 || gzzrxbeMun==100){
			toTotal("#gzzrxbe","#gzzrxbf",0.001);
		}else if(gzzrxbeMun==150 || gzzrxbeMun==300){
			toTotal("#gzzrxbe","#gzzrxbf",0.0008);
		}else if(gzzrxbeMun==250 || gzzrxbeMun==500){
			toTotal("#gzzrxbe","#gzzrxbf",0.0005);
		}else if(gzzrxbeMun==1000 || gzzrxbeMun==2000){
			toTotal("#gzzrxbe","#gzzrxbf",0.0003);
		}
		
		gzzrxhjbf();
	})
	
	// 电梯
	$('#gzzrxdt').live('click', function() {
		if($('#gzzrxdt').is(':checked')) {
			$("#gzzrxdtbf").html(Number(20 * 10000 * 0.0008).toFixed(2));
		}else{
			$("#gzzrxdtbf").html(0);
		}
		gzzrxhjbf();
	})
	
	// 社交
	$('#gzzrxsj').live('click', function() {
		if($('#gzzrxsj').is(':checked')) {
			$("#gzzrxsjbf").html(Number(10 * 10000 * 0.0015).toFixed(2));
		}else{
			$("#gzzrxsjbf").html(0);
		}
		gzzrxhjbf();
	})
	
	// 游泳
	$('#gzzrxyr').live('click', function() {
		if($('#gzzrxyr').is(':checked')) {
			$("#gzzrxyrbf").html(Number(20 * 10000 * 0.0008).toFixed(2));
		}else{
			$("#gzzrxyrbf").html(0);
		}
		gzzrxhjbf();
	})
	
	// 停车
	$('#gzzrxyrtccl').live('change', function() {
		var gzzrxyrtcclMun = parseFloat($("#gzzrxyrtccl").val());
		if($('#gzzrxyrtc').is(':checked')) {
			$("#gzzrxyrtcbf").html(Number(gzzrxyrtcclMun * 50000 * 0.0015).toFixed(2));
		}else{
			$("#gzzrxyrtcbf").html(0);
		}
		gzzrxhjbf();
	})
	$('#gzzrxyrtc').live('click', function() {
		var gzzrxyrtcclMun = parseFloat($("#gzzrxyrtccl").val());
		if($('#gzzrxyrtc').is(':checked')) {
			$("#gzzrxyrtcbf").html(Number(gzzrxyrtcclMun * 50000 * 0.0015).toFixed(2));
		}else{
			$("#gzzrxyrtcbf").html(0);
		}
		gzzrxhjbf();
	})
	//==================公众责任险end=================
	
	
	//================== 食品安全责任险start =================
	$('#spaqzrxyye').live('change', function() {
		
		if($('#spaqzrxyye').val() == ''){
			// 填写0
			toTotal("#spaqzrxyye","#spaqzrxyyebf",0.00025);
			return;
		}
		
		var gzzrxlx = parseFloat($('#spaqzrxyye').val());
		
		if(gzzrxlx < 500){
			toTotal("#spaqzrxyye","#spaqzrxyyebf",0.00025);
			toTotal("#spaqzrxyye","#spaqzrxhjbf",0.00025);
		} else if( 500 <= gzzrxlx < 1000){
			toTotal("#spaqzrxyye","#spaqzrxyyebf",0.00035);
			toTotal("#spaqzrxyye","#spaqzrxhjbf",0.00035);
		}else if(1000 <= gzzrxlx <= 5000){
			toTotal("#spaqzrxyye","#spaqzrxyyebf",0.0004);
			toTotal("#spaqzrxyye","#spaqzrxhjbf",0.0004);
		}else if(gzzrxlx > 5000){
			toTotal("#spaqzrxyye","#spaqzrxyyebf",0.00045);
			toTotal("#spaqzrxyye","#spaqzrxhjbf",0.00045);
		}
		
	})
	$('#spaqzrx').live('click', function() {
		if($('#spaqzrx').is(':checked')) {
			$('#spaqzrxhjbf').html($('#spaqzrxyyebf').html());
		}else{
			$('#spaqzrxhjbf').html(0);
		}
	})
	
	
	//==================食品安全责任险end=================
	
	
	
	// =========== 雇主责任险 start ==========
	$('#gzzrxrd,#gzzrxlx').live('change', function() {
		var gzzrxrd = $('#gzzrxrd').val();
		var gzzrxlx = $('#gzzrxlx').val();
		if(gzzrxrd == '' || gzzrxlx == ''){
			$('#gzzrxbf11').html(0);
			$('#gzzrxhjbf11').html(0);
			return;
		}
		// 单价 * 人数
		var gz = Number(parseFloat(gzzrxlx) * parseFloat(gzzrxrd)).toFixed(2);
		$('#gzzrxbf11').html(gz);
		$('#gzzrxhjbf11').html(gz);
		
	})
	$('#gzzrx11').live('click', function() {
		if($('#gzzrx11').is(':checked')) {
			$('#gzzrxrd').change();
		}else{
			$('#gzzrxbf11').html(0);
			$('#gzzrxhjbf11').html(0);
		}
	})
	// =========== 雇主责任险 end ==========
	
	
	
	//========== 团体意外险 start ===============
	
	$('#ttywxselect,#ttywxrd').live('change', function() {
		var gzzrxrd = $('#ttywxrd').val();
		var ttywxselect = $('#ttywxselect').val();
		if(gzzrxrd == '' || ttywxselect == ''){
			$('#ttywxbf').html(0);
			$('#ttywxhjbf').html(0);
			return;
		}
		// 单价 * 人数
		var gz = Number(parseFloat(ttywxselect) * parseFloat(gzzrxrd)).toFixed(2);
		$('#ttywxbf').html(gz);
		$('#ttywxhjbf').html(gz);
		
	})
	$('#ttywx').live('click', function() {
		if($('#ttywx').is(':checked')) {
			$('#ttywxselect').change();
		}else{
			$('#ttywxbf').html(0);
			$('#ttywxhjbf').html(0);
		}
	})
	
	//========== 团体意外险 end ===============
	
	
	//========== 机器损坏险 stat ===============
	$('#jqshxbe').live('change', function() {
		
		if($('#jqshxbe').val() == ''){
			// 填写0
			toTotal("#jqshxbe","#jqshxbf",0);
			toTotal("#jqshxbe","#jqshxhjbf",0);
			return;
		}
		
		var jqshxbe = parseFloat($('#jqshxbe').val());
		
		if(jqshxbe <= 100){
			toTotal("#jqshxbe","#jqshxbf",0.0004);
			toTotal("#jqshxbe","#jqshxhjbf",0.0004);
		} else if( 500 <= jqshxbe < 1000){
			toTotal("#jqshxbe","#jqshxbf",0.0004);
			toTotal("#jqshxbe","#jqshxhjbf",0.0004);
		}else if(100 < jqshxbe <= 500){
			toTotal("#jqshxbe","#jqshxbf",0.0004);
			toTotal("#jqshxbe","#jqshxhjbf",0.0004);
		}else if(500 < jqshxbe <= 1000){
			toTotal("#jqshxbe","#jqshxbf",0.0004);
			toTotal("#jqshxbe","#jqshxhjbf",0.0004);
		}else if( jqshxbe > 1000){
			toTotal("#jqshxbe","#jqshxbf",0.0003);
			toTotal("#jqshxbe","#jqshxhjbf",0.0003);
		}
	})
	$('#jqshx').live('click', function() {
		if($('#jqshx').is(':checked')) {
			$('#jqshxbe').change();
		}else{
			$('#jqshxbf').html(0);
			$('#jqshxhjbf').html(0);
		}
	})
	
	//========== 机器损坏险 end ===============
	
	
	// === 财产中断 start======
	
	$('#ccxyyzdxbe').live('change', function() {
		if($('#ccxyyzdxbe').val() == ''){
			// 填写0
			toTotal("#ccxyyzdxbe","#ccxyyzdxbf",0);
			toTotal("#ccxyyzdxbe","#ccxyyzdxhjbf",0);
			return;
		}
		var ccxyyzdxbe = parseFloat($('#ccxyyzdxbe').val());
		if(ccxyyzdxbe < 50){
			toTotal("#ccxyyzdxbe","#ccxyyzdxbf",0.001);
			toTotal("#ccxyyzdxbe","#ccxyyzdxhjbf",0.001);
		} else if( 50 <= ccxyyzdxbe < 200){
			toTotal("#ccxyyzdxbe","#ccxyyzdxbf",0.0008);
			toTotal("#ccxyyzdxbe","#ccxyyzdxhjbf",0.0008);
		}else if(ccxyyzdxbe > 200){
			toTotal("#ccxyyzdxbe","#ccxyyzdxbf",0.0006);
			toTotal("#ccxyyzdxbe","#ccxyyzdxhjbf",0.0006);
		}
	})
	$('#ccxyyzdx').live('click', function() {
		if($('#ccxyyzdx').is(':checked')) {
			$('#ccxyyzdxbe').change();
		}else{
			$('#ccxyyzdxbf').html(0);
			$('#ccxyyzdxhjbf').html(0);
		}
	})
	// === 财产中断 end======
	
	// === 机器中断 start======
	
	$('#jsxyyzdxbe').live('change', function() {
		
		if($('#jsxyyzdxbe').val() == ''){
			// 填写0
			toTotal("#jsxyyzdxbe","#jsxyyzbf",0);
			toTotal("#jsxyyzdxbe","#jsxyyzdxhjbf",0);
			return;
		}
		var jsxyyzdxbe = parseFloat($('#jsxyyzdxbe').val());
		if(jsxyyzdxbe < 50){
			toTotal("#jsxyyzdxbe","#jsxyyzbf",0.001);
			toTotal("#jsxyyzdxbe","#jsxyyzdxhjbf",0.001);
		} else if( 50 <= jsxyyzdxbe < 200){
			toTotal("#jsxyyzdxbe","#jsxyyzbf",0.0008);
			toTotal("#jsxyyzdxbe","#jsxyyzdxhjbf",0.0008);
		}else if(jsxyyzdxbe > 200){
			toTotal("#jsxyyzdxbe","#jsxyyzbf",0.0006);
			toTotal("#jsxyyzdxbe","#jsxyyzdxhjbf",0.0006);
		}
	})
	$('#jsxyyzdx').live('click', function() {
		if($('#jsxyyzdx').is(':checked')) {
			$('#jsxyyzdxbe').change();
		}else{
			$('#jsxyyzbf').html(0);
			$('#jsxyyzdxhjbf').html(0);
		}
	})
	// === 机器中断 end======
	
	
});

// 公众责任险保费合计
function gzzrxhjbf(){
	//console.info("fasdfasdfa");
	var gzzrxbf = parseFloat($("#gzzrxbf").html());
	var gzzrxdtbf = parseFloat($("#gzzrxdtbf").html());
	var gzzrxsjbf = parseFloat($("#gzzrxsjbf").html());
	var gzzrxyrbf = parseFloat($("#gzzrxyrbf").html());
	var gzzrxyrtcbf = parseFloat($("#gzzrxyrtcbf").html());
	$("#gzzrxhjbf").html(gzzrxbf + gzzrxdtbf + gzzrxsjbf + gzzrxyrbf + gzzrxyrtcbf);
}

// 计算总保费
function hjzbf(){
	// 1. 投保险种数调整  4个以上  0.95
	// 2. 各险种保费累计额度调整
}

/**
 * author: xg君
 * 描述: 格式化数字字符串，格式化小数位
 * obj为需要格式的对象(例如:input标签)
 * maxLength 为最大小数位长度
 * minLength 为最小小数位长度
 */
function toFloat(obj,maxLength,minLength){
           var htmlVal = $(obj).val();
           var index = htmlVal.indexOf(".");
           var result = "";
           if(index > 0){
               htmlVal = htmlVal.replaceAll("0+?$","");
               var len =  htmlVal.substring(index+1).length;
               if(len > 2){
                       if(len > 6){
                           result = Number(htmlVal).toFixed(maxLength);
                           result = result.replaceAll("0+?$","");
                       }else{
                           result = Number(htmlVal).toFixed(len);
                           result = result.replaceAll("0+?$","");
                       }
               }else {
                   result = Number(htmlVal).toFixed(minLength);
               }
           }else {
               result = Number(htmlVal).toFixed(minLength);
               
           }
           $(obj).val(result);
       }

/**
 * 
 * @param obj 为需要格式的对象(例如:input标签)
 * @param html_ 需要填写的页面值
 * @param rate 年费率
 */
function toTotal(obj,html_,rate){
	 var htmlVal = $(obj).val();
	
	 if(htmlVal==''){$(html_).html(0);return;}
	 htmlVal = parseFloat(htmlVal);
	 var result = 0;
	 result = Number(htmlVal * 10000 * rate).toFixed(2);
	 $(html_).html(result);
}