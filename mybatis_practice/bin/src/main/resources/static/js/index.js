/**
 * 
 */
$(document).ready(function(){
	let startDate = new Date('06-26-2021');
	let today = new Date();
	let days = Math.ceil((today - startDate)/24/60/60/1000);
	
	$("#days").html(days);
	console.log(days)
	$.ajax({
		url : "/getAlbumList",
		type : "post",
		contentType : "application/json; charset=utf-8",
		success : function(data){
			console.log(JSON.stringify(data));
			for(let i = 0 ; i<data.length; i++){
				let cardNum = data[i].cardNum;
				let imgName = data[i].imgName;
				let region = data[i].region;
				let describe = data[i].describe;
				
				let html = '<div class="col"><div class="card shadow-sm">';
	         	html += '<a href = "/second.html?cardNum='+cardNum+'"><img src="img/card'+cardNum+'/'+imgName+'" class="card-img-top" alt="..."></a>';
	         	html += '<div class="card-body">'+
	              		'<p class="card-text">';
	            html += region + '<br>';
	            html += describe + '</p>';
	            html += '<div class="d-flex justify-content-between align-items-center">'+
	                 '<div class="btn-group">'+
	                 '<button type="button" onclick = "deleteAlbum('+cardNum+')" class="btn btn-sm btn-outline-secondary">Del</button>'+
	                 '</div>'+
	             	 '</div>';
	            
	            html += '</div></div></div>';
				$("#card_area").append(html);
			}
		},
		error : function(e){
			console.log(e)
		}
	})
})


function deleteAlbum(cardNum){
	let check = confirm("삭제할꺼야?")
	if(check){
		let data = {
			"cardNum" : cardNum
		}
		$.ajax({
			url : "/deleteAlbum",
			type : "post",
			data : data,
			success : function(data){
				console.log(data);
				location.reload();
				alert("삭제했다능");
			},
			error : function(){
				alert("오류발생!!");
			}
		})
	}else{
		alert("그래 삭제하지마라능")
	}
}