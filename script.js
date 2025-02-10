document.addEventListener("DOMContentLoaded", () => {
  loadApps();
});

// Функция загрузки приложений из data.json
function loadApps() {
  fetch("data.json")
    .then(response => response.json())
    .then(data => {
      displayApps(data);
    })
    .catch(error => console.error("Ошибка загрузки приложений:", error));
}

// Функция отображения списка приложений
function displayApps(apps) {
  const appsList = document.getElementById("appsList");
  appsList.inner
