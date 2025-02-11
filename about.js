document.addEventListener("DOMContentLoaded", function () {
    console.log("about.js загружен");

    const urlParams = new URLSearchParams(window.location.search);
    const appId = urlParams.get("id");

    if (!appId) {
        console.error("ID приложения не найден в URL");
        return;
    }

    console.log("Загружаем data.json...");

    fetch("data.json")
        .then(response => {
            if (!response.ok) throw new Error(`Ошибка HTTP: ${response.status}`);
            return response.json();
        })
        .then(data => {
            console.log("data.json загружен:", data);

            const app = data.apps.find(item => item.id === appId);
            if (!app) {
                console.error(`Приложение с ID "${appId}" не найдено.`);
                return;
            }

            console.log("Найденное приложение:", app);

            document.getElementById("appName").textContent = app.name;
            document.getElementById("appVersion").textContent = `Версия: ${app.version}`;
            document.getElementById("appDescription").textContent = app.description;
            document.getElementById("appIcon").src = app.icon;
            document.getElementById("lastUpdate").textContent = app.lastUpdate;
            document.getElementById("developer").textContent = app.developer;
            document.getElementById("downloadButton").href = app.file;

            const screenshotsContainer = document.getElementById("screenshots");
            screenshotsContainer.innerHTML = "";
            if (app.screenshots && app.screenshots.length > 0) {
                app.screenshots.forEach(src => {
                    let img = document.createElement("img");
                    img.src = src;
                    img.classList.add("screenshot");
                    screenshotsContainer.appendChild(img);
                });
            } else {
                screenshotsContainer.innerHTML = "<p>Нет скриншотов</p>";
            }
        })
        .catch(error => console.error("Ошибка загрузки данных:", error));
});
