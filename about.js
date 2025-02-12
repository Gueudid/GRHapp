document.addEventListener("DOMContentLoaded", function () {
  // Получаем ?id=... из URL (например, about.html?id=app1)
  const urlParams = new URLSearchParams(window.location.search);
  const appId = urlParams.get("id");

  if (!appId) {
    alert("ID приложения не найден в URL!");
    return;
  }

  // Загружаем data.json
  fetch("data.json")
    .then(response => response.json())
    .then(data => {
      // Ищем приложение с нужным id
      const app = data.apps.find(item => item.id === appId);
      if (!app) {
        alert("Приложение с таким ID не найдено!");
        return;
      }

      // Заполняем поля
      document.getElementById("appName").textContent = app.name || "Без названия";
      document.getElementById("appIcon").src = app.icon || "icons/default.png";
      document.getElementById("downloadButton").href = app.file || "#";
      document.getElementById("appVersion").textContent = app.version || "—";
      document.getElementById("lastUpdate").textContent = app.lastUpdate || "—";
      document.getElementById("developer").textContent = app.developer || "—";
      document.getElementById("appSize").textContent = app.size || "—";
      document.getElementById("appDescription").textContent = app.description || "—";

      // Скриншоты
      const screenshotsContainer = document.getElementById("screenshots");
      screenshotsContainer.innerHTML = "";
      if (app.screenshots && app.screenshots.length > 0) {
        app.screenshots.forEach(src => {
          const img = document.createElement("img");
          img.src = src;
          img.classList.add("screenshot");
          screenshotsContainer.appendChild(img);
        });
      } else {
        screenshotsContainer.textContent = "Нет скриншотов";
      }
    })
    .catch(error => {
      console.error("Ошибка загрузки data.json:", error);
      alert("Не удалось загрузить данные о приложении.");
    });
});
