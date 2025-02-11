document.addEventListener("DOMContentLoaded", function() {
    const urlParams = new URLSearchParams(window.location.search);
    const appId = urlParams.get("id");

    fetch("data.json")
        .then(response => response.json())
        .then(data => {
            const app = data.apps.find(a => a.id === appId);
            if (app) {
                document.getElementById("app-name").textContent = app.name;
                document.getElementById("app-category").textContent = "Категория: " + app.category;
                document.getElementById("app-size").textContent = "Размер: " + app.size;
                document.getElementById("app-description").textContent = app.description;
                document.getElementById("app-icon").src = app.icon || "default.png";
                document.getElementById("download-btn").href = app.file;

                // Добавляем скриншоты
                const screenshotsContainer = document.getElementById("app-screenshots");
                app.screenshots.forEach(src => {
                    let img = document.createElement("img");
                    img.src = src;
                    img.alt = "Скриншот";
                    screenshotsContainer.appendChild(img);
                });
            }
        })
        .catch(error => console.error("Ошибка загрузки данных:", error));
});
