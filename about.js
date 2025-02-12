document.addEventListener("DOMContentLoaded", () => {
    const appName = document.getElementById("app-name");
    const appVersion = document.getElementById("app-version");
    const appDescription = document.getElementById("app-description");
    const appIcon = document.getElementById("app-icon");
    const screenshotContainer = document.querySelector(".screenshot-container");
    const downloadBtn = document.getElementById("download-btn");

    // Загружаем данные из JSON
    fetch("data.json")
        .then(response => response.json())
        .then(data => {
            const appData = data.apps[0]; // Загружаем первое приложение (или переделать под динамический выбор)

            appName.textContent = appData.name;
            appVersion.textContent = `Версия: ${appData.version}`;
            appDescription.textContent = appData.description;
            appIcon.src = appData.icon;
            downloadBtn.href = appData.download;

            // Очищаем контейнер перед добавлением скриншотов
            screenshotContainer.innerHTML = "";
            appData.screenshots.forEach((src, index) => {
                const img = document.createElement("img");
                img.src = src;
                img.alt = `Скриншот ${index + 1}`;
                screenshotContainer.appendChild(img);
            });
        })
        .catch(error => console.error("Ошибка загрузки данных:", error));
});