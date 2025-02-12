let allApps = [];

async function loadApps() {
    try {
        const response = await fetch("data.json");
        const data = await response.json();
        allApps = data.apps || [];
        displayApps(allApps);
    } catch (error) {
        console.error("Ошибка загрузки JSON:", error);
    }
}

function displayApps(apps) {
    const appList = document.getElementById("app-list");
    appList.innerHTML = "";
    apps.forEach(app => {
        const appCard = document.createElement("div");
        appCard.className = "app-card";
        appCard.innerHTML = `
            <h3>${app.name}</h3>
            <p><b>Категория:</b> ${app.category}</p>
            <p><b>Размер:</b> ${app.size || "Не указан"}</p>
        `;
        appList.appendChild(appCard);
    });
}

function filterCategory(category) {
    console.log("Выбрана категория:", category);
    if (category === "Все") {
        displayApps(allApps);
        return;
    }
    const filteredApps = allApps.filter(app => 
        app.category && app.category.trim().toLowerCase() === category.trim().toLowerCase()
    );
    console.log("Отфильтрованные приложения:", filteredApps);
    displayApps(filteredApps);
}

function searchApps() {
    const query = document.getElementById("search").value.trim().toLowerCase();
    const filteredApps = allApps.filter(app =>
        app.name.toLowerCase().includes(query) ||
        app.category.toLowerCase().includes(query)
    );
    displayApps(filteredApps);
}

window.onload = loadApps;