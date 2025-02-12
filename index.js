document.addEventListener("DOMContentLoaded", function () {
    fetch("data.json")
        .then(response => response.json())
        .then(data => {
            displayApps(data.apps);
        })
        .catch(error => console.error("Ошибка загрузки данных:", error));
});

function displayApps(apps) {
    let appList = document.getElementById("app-list");
    appList.innerHTML = "";

    apps.forEach(app => {
        let appCard = document.createElement("div");
        appCard.classList.add("app-card");

        let img = document.createElement("img");
        img.src = app.icon ? app.icon : "placeholder.png";
        img.alt = app.name;

        let name = document.createElement("h3");
        name.textContent = app.name;

        let category = document.createElement("p");
        category.textContent = app.category ? app.category : "Без категории";

        let link = document.createElement("a");
        link.href = `about.html?name=${encodeURIComponent(app.name)}`;
        link.textContent = "Подробнее";

        appCard.appendChild(img);
        appCard.appendChild(name);
        appCard.appendChild(category);
        appCard.appendChild(link);
        appList.appendChild(appCard);
    });
}

function searchApps() {
    let query = document.getElementById("search").value.toLowerCase();
    fetch("data.json")
        .then(response => response.json())
        .then(data => {
            let filteredApps = data.apps.filter(app => app.name.toLowerCase().includes(query));
            displayApps(filteredApps);
        });
}
