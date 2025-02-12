document.addEventListener("DOMContentLoaded", function () {
    fetch("data.json")
        .then(response => response.json())
        .then(data => {
            const container = document.getElementById("app-container");
            container.innerHTML = ""; // Очищаем перед добавлением

            data.apps.forEach(app => {
                const card = document.createElement("div");
                card.classList.add("app-card");
                card.innerHTML = `
                    <img src="${app.icon}" alt="${app.name}" class="app-icon">
                    <div class="app-info">
                        <h3>${app.name}</h3>
                        <p>${app.category || "Без категории"}</p>
                        <a href="about.html?app=${encodeURIComponent(app.name)}">Подробнее</a>
                    </div>
                `;
                container.appendChild(card);
            });
        })
        .catch(error => console.error("Ошибка загрузки данных:", error));
});
