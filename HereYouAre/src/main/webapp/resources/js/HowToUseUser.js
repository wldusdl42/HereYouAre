/**
 * 
 */
function openHowTo(event, name) {
  var i, tabContent, tabLink;
  tabContent = document.getElementsByClassName("tabContent");
  for (i = 0; i < tabContent.length; i++) {
	  tabContent[i].style.display = "none";
  }
  tabLink = document.getElementsByClassName("tabLink");
  for (i = 0; i < tabLink.length; i++) {
	  tabLink[i].className = tabLink[i].className.replace(" active", "");
  }
  document.getElementById(name).style.display = "block";
  event.currentTarget.className += " active";
}