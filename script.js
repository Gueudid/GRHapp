document.addEventListener("DOMContentLoaded", function () {
    const menuButton = document.getElementById("menuButton");
    const sidebar = document.getElementById("sidebar");
    const appList = document.getElementById("appList");

    menuButton.addEventListener("click", function () {
        sidebar.style.left = sidebar.style.left === "0px" ? "-200px" : "0px";
    });

    fetch("data.json")
        .then(response => response.json())
        .then(data => {
            renderApps(data.apps);
            
            document.querySelectorAll(".category").forEach(button => {
                button.addEventListener("click", function () {
                    const category = this.getAttribute("data-category");
                    const filteredApps = category === "Все" ? data.apps : data.apps.filter(app => app.category === category);
                    renderApps(filteredApps);
                    sidebar.style.left = "-200px";
                });
            });
        });

    function renderApps(apps) {
        appList.innerHTML = "";
        apps.forEach(app => {
            const appDiv = document.createElement("div");
            appDiv.classList.add("app");
            appDiv.innerHTML = `
                <h3>${app.name}</h3>
                <button class="download" data-file="${app.file}">Скачать</button>
            `;
            appList.appendChild(appDiv);
        });

        document.querySelectorAll(".download").forEach(button => {
            button.addEventListener("click", function () {
                const file = this.getAttribute("data-file");
                window.location.href = file;
            });
        });
    }
});
