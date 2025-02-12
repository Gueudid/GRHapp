document.addEventListener("DOMContentLoaded", function () {
    fetch("data.json")
        .then(response => response.json())
        .then(data => {
            const appContainer = document.getElementById("app-container");
            appContainer.innerHTML = ""; // Очистка перед добавлением элементов

            data.apps.forEach(app => {
                const appElement = document.createElement("div");
                appElement.classList.add("app-card");

                appElement.innerHTML = `
                    <img src="${app.icon || 'default-icon.png'}" alt="${app.name}" class="app-icon">
                    <div class="app-info">
                        <h2>${app.name}</h2>
                        <p>${app.category || "Без категории"}</p>
                        <p>Дата добавления: ${app.date || "Неизвестно"}</p>
                        <a href="${app.file}" class="download-btn">Скачать</a>
                    </div>
                `;

                appContainer.appendChild(appElement);
            });
        })
        .catch(error => console.error("Ошибка загрузки данных:", error));
});
