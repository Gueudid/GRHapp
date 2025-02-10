function toggleDarkMode() {
    document.body.classList.toggle('dark-mode');
    localStorage.setItem('darkMode', document.body.classList.contains('dark-mode') ? 'enabled' : 'disabled');
}

// Проверяем сохраненные настройки
if (localStorage.getItem('darkMode') === 'enabled') {
    document.body.classList.add('dark-mode');
}
