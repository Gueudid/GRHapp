document.addEventListener("DOMContentLoaded", () => {
    const JSON_URL = "https://raw.githubusercontent.com/Gueudid/GRHapp/main/appsandgames.json";
    const appListDiv = document.getElementById('appList');
    const searchBox = document.getElementById('searchBox');

    async function loadApps() {
        try {
            let response = await fetch(JSON_URL);
            if (!response.ok) throw new Error("Ошибка загрузки JSON");

            let data = await response.json();
            if (!data.apps || !Array.isArray(data.apps)) throw new Error("Некорректные данные");

            displayApps(data.apps);
        } catch (error) {
            appListDiv.innerHTML = `<p style="color: red;">Ошибка: ${error.message}</p>`;
        }
    }

    function displayApps(apps) {
        appListDiv.innerHTML = "";
        if (apps.length === 0) {
            appListDiv.innerHTML = "<p>Приложения не найдены</p>";
            return;
        }

        apps.forEach(app => {
            const tile = document.createElement("div");
            tile.classList.add("app-tile");

            tile.innerHTML = `
                <img src="${app.icon || 'https://via.placeholder.com/80'}" alt="${app.name}">
                <h3>${app.name}</h3>
                <a href="${app.downloadUrl}" target="_blank">Скачать</a>
            `;

            appListDiv.appendChild(tile);
        });
    }

    searchBox.addEventListener("input", () => {
        let query = searchBox.value.toLowerCase();
        fetch(JSON_URL)
            .then(res => res.json())
            .then(data => {
                let filtered = data.apps.filter(app => app.name.toLowerCase().includes(query));
                displayApps(filtered);
            });
    });

    loadApps();
});
