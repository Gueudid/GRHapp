document.addEventListener("DOMContentLoaded", function () {
    console.log("about.js загружен");

    const urlParams = new URLSearchParams(window.location.search);
    const appId = urlParams.get("id");

    if (!appId) {
        console.error("ID приложения не найден в URL");
        return;
    }

    fetch("data.json")
        .then(response => response.json())
        .then(data => {
            const app = data.apps.find(item => item.id === appId);

            if (!app) {
                console.error("Приложение не найдено в data.json");
                return;
            }

            document.getElementById("appName").textContent = app.name;
            document.getElementById("appVersion").textContent = `Версия: ${app.version}`;
            document.getElementById("appDescription").textContent = app.description;
            document.getElementById("appIcon").src = app.icon;
            document.getElementById("lastUpdate").textContent = app.lastUpdate;
            document.getElementById("developer").textContent = app.developer;
            document.getElementById("downloadButton").href = app.file;

            const screenshotsContainer = document.getElementById("screenshots");
            screenshotsContainer.innerHTML = "";

            app.screenshots.forEach(src => {
                let img = document.createElement("img");
                img.src = src;
                img.classList.add("screenshot");
                screenshotsContainer.appendChild(img);
            });
        })
        .catch(error => console.error("Ошибка загрузки данных:", error));
});
