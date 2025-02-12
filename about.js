async function loadAppInfo() {
    const params = new URLSearchParams(window.location.search);
    const appId = params.get("id");

    if (appId === null || isNaN(appId)) {
        document.getElementById("app-info").innerHTML = "<p>Приложение не найдено.</p>";
        return;
    }

    try {
        const response = await fetch("data.json");

        if (!response.ok) {
            console.error("Ошибка загрузки JSON:", response.statusText);
            document.getElementById("app-info").innerHTML = "<p>Ошибка загрузки информации.</p>";
            return;
        }

        const data = await response.json();
        const app = data.apps[parseInt(appId)];

        if (!app) {
            document.getElementById("app-info").innerHTML = "<p>Приложение не найдено.</p>";
            return;
        }

        document.getElementById("app-title").innerText = app.name;

        // Добавляем иконку приложения
        const iconHTML = `<img src="${app.icon}" alt="Иконка приложения" class="app-icon">`;

        document.getElementById("app-info").innerHTML = `
            ${iconHTML}
            <p><b>Категория:</b> ${app.category}</p>
            <p><b>Описание:</b> ${app.description || "Нет описания"}</p>
            <p><b>Размер:</b> ${app.size || "Не указан"}</p>
            <p><b>Разработчик:</b> ${app.developer || "Не указан"}</p>
            <p><b>Дата обновления:</b> ${app.lastUpdate || "Не указана"}</p>
            <p><b>Скачиваний:</b> ${app.downloads || "Неизвестно"}</p>
            <p><b>Рейтинг:</b> ${app.rating || "Нет оценок"}</p>
            <a href="${app.file}" class="download-btn" target="_blank" rel="noopener noreferrer">Скачать</a>
        `;

        // Скриншоты
        const screenshotGallery = document.getElementById("screenshot-gallery");
        screenshotGallery.innerHTML = "";

        if (app.screenshots && app.screenshots.length > 0) {
            app.screenshots.forEach(src => {
                const img = document.createElement("img");
                img.src = src;
                img.alt = "Скриншот";
                screenshotGallery.appendChild(img);
            });
        } else {
            screenshotGallery.innerHTML = "<p>Скриншоты отсутствуют.</p>";
        }

    } catch (error) {
        console.error("Ошибка загрузки JSON:", error);
        document.getElementById("app-info").innerHTML = "<p>Ошибка загрузки информации.</p>";
    }
}

window.onload = loadAppInfo;