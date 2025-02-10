function loadSettings() {
    let theme = localStorage.getItem("theme") || "light";
    document.body.classList.toggle("dark-theme", theme === "dark");

    let sort = localStorage.getItem("sort") || "name";
    document.getElementById("sortSelect").value = sort;
}

function saveSettings() {
    localStorage.setItem("theme", document.getElementById("themeToggle").checked ? "dark" : "light");
    localStorage.setItem("sort", document.getElementById("sortSelect").value);
    loadSettings();
}

document.getElementById("themeToggle").addEventListener("change", saveSettings);
document.getElementById("sortSelect").addEventListener("change", saveSettings);

window.onload = loadSettings;
