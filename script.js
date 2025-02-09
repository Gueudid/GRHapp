document.addEventListener("DOMContentLoaded", loadApps);

function loadApps() {
    fetch("appsandgames.json")
        .then(response => response.json())
        .then(data => {
            const appList = document.getElementById("app-list");
            appList.innerHTML = "";
            data.apps.forEach(app => {
                const appCard = document.createElement("div");
                appCard.classList.add("app-card");
                appCard.innerHTML = `
                    <img src="${app.icon}" alt="${app.name}">
                    <h3>${app.name}</h3>
                    <button onclick="openApp('${app.name}', '${app.downloadUrl}')">Скачать</button>
                    <button onclick="showDetails('${app.name}')">О приложении</button>
                `;
                appList.appendChild(appCard);
            });
        })
        .catch(error => console.error("Ошибка загрузки приложений:", error));
}

function openApp(name, url) {
    window.open(url, "_blank");
}

function searchApps() {
    const searchQuery = document.getElementById("search").value.toLowerCase();
    const apps = document.querySelectorAll(".app-card");
    apps.forEach(app => {
        const title = app.querySelector("h3").textContent.toLowerCase();
        app.style.display = title.includes(searchQuery) ? "block" : "none";
    });
}

function toggleMenu() {
    const menu = document.getElementById("menu");
    menu.style.display = menu.style.display === "block" ? "none" : "block";
}

function openSettings() {
    alert("Раздел настроек в разработке!");
}

function login() {
    alert("Авторизация через Google в разработке!");
}

function showDetails(name) {
    alert(`Здесь будет описание ${name}`);
}
