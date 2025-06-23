//dashboard contents
function showpanel(contentID) {
    var contents = document.getElementsByClassName('main-content');
    for (var i = 0; i < contents.length; i++) {
        contents[i].style.display = "none";
    }
    document.getElementById(contentID).style.display = "block";

    // Save selected panel
    localStorage.setItem("activePanel", contentID);
}

window.onload = function () {
    var saved = localStorage.getItem("activePanel") || "dashboardContent";
    showpanel(saved);
};