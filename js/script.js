document.addEventListener("DOMContentLoaded", () => {
    loadApps();
    loadSettings();
});

function loadApps() {
    fetch("https://raw.githubusercontent.com/Gueudid/GRHapp/main/appsandgames.json")
        .then(res => res.json())
        .then(data => {
            let appList = document.getElementById("app-list");
            appList.innerHTML = "";
            data.apps.forEach(app => {
                let appDiv = document.createElement("div");
                appDiv.classList.add("app");
                appDiv.innerHTML = `
                    <img src="${app.icon}" width="80">
                    <h3>${app.name}</h3>
                    <p>${app.description}</p>
                    <button onclick="downloadApp('${app.download}')">Скачать</button>
                `;
                appList.appendChild(appDiv);
            });
        })
        .catch(() => {
            document.getElementById("app-list").innerHTML = "<p>Ошибка загрузки списка приложений.</p>";
        });
}

function downloadApp(link) {
    window.open(link, "_blank");
}

function openSettings() {
    document.getElementById("settings-modal").style.display = "flex";
}

function closeSettings() {
    document.getElementById("settings-modal").style.display = "none";
}

function saveSettings() {
    let darkMode = document.getElementById("dark-mode").checked;
    localStorage.setItem("dark-mode", darkMode);
    applySettings();
    closeSettings();
}

function loadSettings() {
    if (localStorage.getItem("dark-mode") === "true") {
        document.body.style.background = "#222";
        document.body.style.color = "white";
    }
}

function applySettings() {
    if (localStorage.getItem("dark-mode") === "true") {
        document.body.style.background = "#222";
        document.body.style.color = "white";
    } else {
        document.body.style.background = "#f4f4f4";
        document.body.style.color = "black";
    }
}

function openUpload() {
    document.getElementById("upload-modal").style.display = "flex";
}

function closeUpload() {
    document.getElementById("upload-modal").style.display = "none";
}

function uploadAPK() {
    alert("Функция загрузки APK пока не реализована.");
    closeUpload();
}
