document.addEventListener("DOMContentLoaded", function () {
    const params = new URLSearchParams(window.location.search);
    const appName = params.get("app");

    fetch("data.json")
        .then(response => response.json())
        .then(data => {
            const app = data.apps.find(a => a.name === appName);
            if (!app) {
                document.getElementById("app-content").innerHTML = "<p>Приложение не найдено.</p>";
                return;
            }

            document.getElementById("app-title").textContent = app.name;
            document.getElementById("app-icon").src = app.icon;
            document.getElementById("app-icon").alt = app.name;
            document.getElementById("app-version").textContent = app.version || "Неизвестно";
            document.getElementById("app-update").textContent = app.lastUpdate || "Неизвестно";
            document.getElementById("app-dev").textContent = app.developer || "Неизвестно";
            document.getElementById("app-desc").textContent = app.description || "Описание отсутствует";
            document.getElementById("app-download").href = app.file || "#";
        })
        .catch(error => console.error("Ошибка загрузки данных:", error));
});          const img = document.createElement("img");
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
