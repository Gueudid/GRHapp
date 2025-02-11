document.addEventListener("DOMContentLoaded", function () {
    const appList = document.getElementById("app-list");
    const searchInput = document.getElementById("search");

    const apps = [
        { name: "Приложение 1", icon: "icon1.png", link: "about.html" },
        { name: "Приложение 2", icon: "icon2.png", link: "about.html" }
    ];

    function renderApps(filter = "") {
        appList.innerHTML = "";
        apps
            .filter(app => app.name.toLowerCase().includes(filter.toLowerCase()))
            .forEach(app => {
                const appCard = document.createElement("div");
                appCard.classList.add("app-card");
                appCard.innerHTML = `
                    <img src="${app.icon}" alt="${app.name}">
                    <h3>${app.name}</h3>
                `;
                appCard.onclick = () => window.location.href = app.link;
                appList.appendChild(appCard);
            });
    }

    searchInput.addEventListener("input", () => renderApps(searchInput.value));

    renderApps();
});
