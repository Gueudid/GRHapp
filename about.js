document.addEventListener("DOMContentLoaded", function () {
    console.log("about.js загружен");

    // Получаем ID приложения из URL
    const urlParams = new URLSearchParams(window.location.search);
    const appId = urlParams.get("id");
    console.log("Полученный id:", appId);

    if (!appId) {
        console.error("ID приложения не найден в URL");
        return;
    }

    // Загружаем данные из data.json
    fetch("data.json")
        .then(response => {
            if (!response.ok) {
                throw new Error(`Ошибка загрузки data.json: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            console.log("Данные загружены:", data);
            
            // Ищем приложение по ID
            const app = data.apps.find(item => item.id === appId);

            if (!app) {
                console.error("Приложение не найдено в data.json");
                return;
            }

            // Обновляем элементы в about.html
            document.getElementById("appName").textContent = app.name;
            document.getElementById("appVersion").textContent = `Версия: ${app.version}`;
            document.getElementById("appDescription").textContent = app.description;
            document.getElementById("appIcon").src = app.icon;
            document.getElementById("lastUpdate").textContent = app.lastUpdate;
            document.getElementById("developer").textContent = app.developer;
            
            // Добавляем скриншоты
            const screenshotsContainer = document.getElementById("screenshots");
            screenshotsContainer.innerHTML = ""; // Очищаем перед добавлением
            app.screenshots.forEach((src, index) => {
                let img = document.createElement("img");
                img.src = src;
                img.alt = `Скриншот ${index + 1}`;
                img.classList.add("screenshot");
                screenshotsContainer.appendChild(img);
            });

            // Устанавливаем ссылку для скачивания
            document.getElementById("downloadButton").href = app.file;
        })
        .catch(error => {
            console.error("Ошибка при загрузке данных:", error);
        });
});
