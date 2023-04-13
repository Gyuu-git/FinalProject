<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
body{
	background: black
}
#mine{
	width: 25%;
}
#your{
	width: 74%;
}
</style>

<script src="/resources/js/jquery-3.6.0.js"></script>
<script src="https://unpkg.com/peerjs@1.4.7/dist/peerjs.min.js"></script>

<script type="text/javascript">

const urlParams = new URL(location.href).searchParams;
const myNum = urlParams.get('myNum');
const yourNum = urlParams.get('yourNum');


</script>


<div id="videos">
	<video id="mine" poster="/resources/images/loading.jpg" playsinline autoplay muted></video>
	<video id="your" poster="/resources/images/connecting.jpg" playsinline autoplay ></video>
</div>
<!-- <button id="conn" >연결</button> -->


<script type="text/javascript">

let $_mine = document.querySelector("#mine");
let $_your = document.querySelector("#your");
let localStream;

//peer 객체 초기화, peer 객체 open
var peer = new Peer(myNum);
peer.on('open', function(id) {});

var getUserMedia = navigator.mediaDevices.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia || navigator.mzGetUserMedia;
// media 정보를 가져와서 내 화면에 띄우기
getUserMedia({video: true, audio: true})
	.then((stream) => {
		localStream = stream;
		$_mine.srcObject = localStream;
	}).catch((err) => {
	  alert("카메라 또는 마이크를 찾을 수 없습니다.");
	});

peer.on('call', function(call) {
    call.answer(localStream);
    call.on('stream', function(remoteStream) {
    	$_your.srcObject = remoteStream;
    });
  });

setTimeout(function() {
	// 상대방에게 call
	var sendCall = peer.call(yourNum, localStream);
	sendCall.on('stream', function(remoteStream) {
		// 받은 stream을 화면에 출력
		$_your.srcObject = remoteStream;
	});
}, 1000);
</script>

