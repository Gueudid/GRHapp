fetch("appsandgames.json")
    .then(response => response.json())
    .then(data => {
        let appGrid = document.getElementById("appGrid");
        data.forEach(app => {
            let appTile = document.createElement("div");
            appTile.className = "app";
            appTile.innerHTML = `
                <img src="${app.icon}" alt="${app.name}">
                <h3>${app.name}</h3>
                <p>⭐ ${app.rating}</p>
                <a href="${app.apk}" download>⬇️ Скачать</a>
            `;
            appGrid.appendChild(appTile);
        });
    });

document.getElementById("searchInput").addEventListener("input", function () {
    let filter = this.value.toLowerCase();
    document.querySelectorAll(".app").forEach(app => {
        let title = app.querySelector("h3").textContent.toLowerCase();
        app.style.display = title.includes(filter) ? "block" : "none";
    });
});
