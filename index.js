fetch("data.json")
  .then((response) => response.json())
  .then((data) => {
    const container = document.getElementById("app-container");

    data.apps.forEach((app) => {
      const appElement = document.createElement("div");
      appElement.classList.add("app");

      // Проверяем наличие иконки, если нет — используем заглушку
      const icon = app.icon ? app.icon : "placeholder.png";

      appElement.innerHTML = `
        <img src="${icon}" alt="${app.name}" class="app-icon">
        <h2>${app.name}</h2>
        <p>${app.description ? app.description : "Нет описания"}</p>
        <a href="app.html?id=${app.id}">Подробнее</a>
      `;

      container.appendChild(appElement);
    });
  })
  .catch((error) => console.error("Ошибка загрузки данных:", error));
