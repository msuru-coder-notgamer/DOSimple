let imgs = document.getElementsByClassName("img");
let hdiwP = document.getElementById("hdiw-p");
let hdimtP = document.getElementById("hdimt-p");
function imageResizeHandler() {
	if (imgs.item(0).clientWidth <= 290) {
		imgs.item(0).style.transform = "translate(120px, 400px)";

		imgs.item(1).style.transform = "translate(-120px, 300px)";
		hdiwP.style.marginBottom = "40vh";
		hdimtP.style.marginTop = "20vh";
		if (imgs.item(0).clientWidth <= 199) {
			imgs.item(0).style.transform = "translate(120px, 420px)";
			hdiwP.style.marginBottom = "25vh";
			if (imgs.item(0).clientWidth <= 142) {
				hdiwP.style.marginBottom = "17vh";
				imgs.item(0).style.width = "35%";

				imgs.item(0).style.transform = "translate(120px, 460px)";
			}
		}
	} else {
		imgs.item(0).style.transform = "rotate(9deg) translate(50px, 100px)";
		imgs.item(1).style.transform = "rotate(-9deg) translate(-50px, 100px)";
		hdiwP.style.marginBottom = "0px";
		hdimtP.style.marginBottom = "0px";
	}
}
imageResizeHandler();
window.addEventListener("resize", imageResizeHandler);
