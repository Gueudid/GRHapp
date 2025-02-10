document.getElementById("menu-btn").addEventListener("click", function() {
    document.getElementById("side-menu").style.left = "0";
});

document.getElementById("close-menu").addEventListener("click", function() {
    document.getElementById("side-menu").style.left = "-250px";
});

document.getElementById("search").addEventListener("input", function() {
    let query = this.value.toLowerCase();
    document.querySelectorAll(".tile").forEach(function(app) {
        let name = app.querySelector("h3").textContent.toLowerCase();
        if (name.includes(query)) {
            app.style.display = "block";
        } else {
            app.style.display = "none";
        }
    });
});
