document.addEventListener("DOMContentLoaded", function () {
    console.log("about.js загружен");

    const urlParams = new URLSearchParams(window.location.search);
    const appId = urlParams.get("id");
    console.log("ID приложения:", appId);

    if (!appId) {
        alert("Ошибка: ID приложения не найден.");
        window.location.href = "index.html"; // Перенаправление на главную
        return;
    }

    fetch("https://gueudid.github.io/GRHapp/data.json")
        .then(response => {
            if (!response.ok) {
                throw new Error(`Ошибка HTTP: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            console.log("Загруженные данные:", data);
            if (!data.apps || !Array.isArray(data.apps)) {
                throw new Error("Ошибка: Неправильный формат data.json");
            }

            const app = data.apps.find(item => item.id === appId);
            console.log("Найденное приложение:", app);

            if (!app) {
                alert("Ошибка: Приложение не найдено.");
                window.location.href = "index.html";
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

            if (app.screenshots && Array.isArray(app.screenshots)) {
                app.screenshots.forEach(src => {
                    let img = document.createElement("img");
                    img.src = src;
                    img.classList.add("screenshot");
                    screenshotsContainer.appendChild(img);
                });
            }
        })
        .catch(error => {
            console.error("Ошибка загрузки данных:", error);
            alert("Ошибка загрузки данных: " + error.message);
        });
});
