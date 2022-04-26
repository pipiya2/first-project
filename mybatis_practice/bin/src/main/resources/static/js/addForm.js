/**
 * 
 */
 
$(document).ready(function(){
	$("#region").focus();
})
function addAlbum(e){
	let data = blankCheck();
	if(data != false){
		$.ajax({
			url : "addAlbum",
			type : "post",
			data : data,
			processData: false,
			contentType : false,
			success : function(text){
				if(text == "success"){
					alert("앨범등록이 완료되었습니다.");
					location.href = "/";
					/*$("#region").val("");
					$("#describe").val("");
					$("file").val("");
					$("#region").focus();*/
				}
			},
			error : function(e){
				alert("에러");
				console.log(e);
			},
		})
	}
}

function setThumbnail(e){
	var reader = new FileReader();
	//<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3"
	reader.onload = function(event) {
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		img.setAttribute("class", "img-thumbnail");
		document.querySelector("div#image_container").appendChild(img);
	};

	reader.readAsDataURL(event.target.files[0]);

}

function blankCheck(){
	if(!$("#region").val()){
		$("#region").focus();
		return false;
	}
	if(!$("#describe").val()){
		$("#describe").focus();
		return false;
	}
	if(!$("#file").val()){
		$("#file").focus();
		return false;
	}
	let file = $("#file")[0];
	
	let data = new FormData();
	data.append("region", $("#region").val());
	data.append("describe",$("#describe").val());
	data.append("imgName", file.files[0]);
	return data;
}

