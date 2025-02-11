document.addEventListener("DOMContentLoaded", function () {
    fetch("data.json")
        .then(response => {
            if (!response.ok) {
                throw new Error("Ошибка загрузки data.json");
            }
            return response.json();
        })
        .then(data => {
            console.log("Данные загружены:", data);
            renderApps(data.apps);
        })
        .catch(error => console.error("Ошибка загрузки JSON:", error));
});

function renderApps(apps) {
    let container = document.getElementById("app-list");
    container.innerHTML = "";

    apps.forEach(app => {
        let card = document.createElement("div");
        card.classList.add("app-card");

        card.innerHTML = `
            <img src="${app.img}" alt="${app.name}">
            <h3>${app.name}</h3>
            <p>${app.description}</p>
            <a href="${app.download}" class="download-btn">Скачать</a>
        `;

        container.appendChild(card);
    });
}
