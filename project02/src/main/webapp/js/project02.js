/**************************************
	공지사항 글쓰기화면 - 폼체크 
***************************************/
function noticeWriteFormCheck(){
	let ntitle;
	let ncontent;
	ntitle = document.getElementById("ntitle");
	ncontent = document.getElementById("ncontent");
	if(ntitle.value == "") {
		alert("제목을 입력해주세요");
		ntitle.focus();
		return false;
	}else if(ncontent.value == "") {
		alert("내용을 입력해주세요");
		ntitle.focus();
		return false;
	}else {
		notice_writeform.submit();
	}
}

/**************************************
	공지사항 수정화면 - 폼체크 
***************************************/
function noticeUpdateFormCheck(){
	let ntitle;
	ntitle = document.getElementById("ntitle");
	
	if(ntitle.value == "") {
		alert("제목을 입력해주세요");
		ntitle.focus();
		return false;
	}else {
		notice_updateform.submit();
	}
}