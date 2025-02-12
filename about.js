const urlParams = new URLSearchParams(window.location.search);
const appId = urlParams.get("id");

fetch("data.json")
  .then((response) => response.json())
  .then((data) => {
    const app = data.apps.find((app) => app.id === appId);

    if (!app) {
      document.getElementById("app-container").innerHTML =
        "<h2>Приложение не найдено</h2>";
      return;
    }

    // Проверяем иконку и скриншоты
    const icon = app.icon ? app.icon : "placeholder.png";
    const screenshots = app.screenshots ? app.screenshots : [];

    document.getElementById("app-icon").src = icon;
    document.getElementById("app-name").textContent = app.name;
    document.getElementById("app-description").textContent =
      app.description || "Нет описания";
    document.getElementById("app-version").textContent = app.version || "—";
    document.getElementById("app-developer").textContent =
      app.developer || "Неизвестно";
    document.getElementById("app-update").textContent =
      app.lastUpdate || "—";
    document.getElementById("app-download").href = app.file || "#";

    // Если скриншотов нет, скрываем блок
    const screenshotContainer = document.getElementById("app-screenshots");
    if (screenshots.length > 0) {
      screenshots.forEach((src) => {
        const img = document.createElement("img");
        img.src = src;
        img.classList.add("screenshot");
        screenshotContainer.appendChild(img);
      });
    } else {
      screenshotContainer.style.display = "none";
    }
  })
  .catch((error) => console.error("Ошибка загрузки данных:", error));
