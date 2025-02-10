document.addEventListener("DOMContentLoaded", () => {
    const appContainer = document.getElementById("app-container");
    const searchInput = document.getElementById("search");
    const settingsMenu = document.getElementById("settings-menu");

    // Загрузка списка приложений
    fetch("appsandgames.json")
        .then(response => response.json())
        .then(data => {
            appContainer.innerHTML = "";
            data.apps.forEach(app => {
                const appTile = document.createElement("div");
                appTile.classList.add("app-tile");
                appTile.innerHTML = `
                    <img src="${app.icon}" alt="${app.name}" width="100">
                    <h3>${app.name}</h3>
                    <p>${app.description}</p>
                    <button onclick="downloadApp('${app.url}')">Скачать</button>
                `;
                appContainer.appendChild(appTile);
            });
        })
        .catch(error => {
            appContainer.innerHTML = "<p>Ошибка загрузки приложений</p>";
            console.error("Ошибка:", error);
        });

    // Фильтр поиска
    searchInput.addEventListener("input", (e) => {
        const query = e.target.value.toLowerCase();
        document.querySelectorAll(".app-tile").forEach(tile => {
            tile.style.display = tile.innerText.toLowerCase().includes(query) ? "block" : "none";
        });
    });

    // Настройки
    document.getElementById("open-settings").addEventListener("click", () => {
        settingsMenu.classList.toggle("hidden");
    });

    document.getElementById("close-settings").addEventListener("click", () => {
        settingsMenu.classList.add("hidden");
    });

});

// Функция скачивания APK
function downloadApp(url) {
    window.location.href = url;
}
