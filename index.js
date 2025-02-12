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
    apps.forEach((app, index) => {
        const appCard = document.createElement("div");
        appCard.className = "app-card";
        appCard.innerHTML = `
            <h3>${app.name}</h3>
            <p><b>Категория:</b> ${app.category}</p>
            <button onclick="openAbout(${index})">Подробнее</button>
        `;
        appList.appendChild(appCard);
    });
}

function openAbout(index) {
    window.location.href = `about.html?id=${index}`;
}

function filterCategory(category) {
    if (category === "Все") {
        displayApps(allApps);
        return;
    }
    const filteredApps = allApps.filter(app => app.category.toLowerCase() === category.toLowerCase());
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