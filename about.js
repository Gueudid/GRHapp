document.addEventListener('DOMContentLoaded', () => {
    fetch('/data.json') // Используем абсолютный путь
        .then(response => {
            if (!response.ok) {
                throw new Error(`Ошибка загрузки: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            console.log('Данные загружены:', data);
            const container = document.getElementById('about-content');

            if (!container) {
                console.error('Контейнер about-content не найден!');
                return;
            }

            let html = '';
            data.apps.forEach(app => {
                html += `
                    <div class="app-card">
                        <img src="${app.image || 'placeholder.png'}" alt="${app.name}">
                        <h3>${app.name}</h3>
                        <p>${app.description || 'Описание отсутствует'}</p>
                    </div>
                `;
            });

            container.innerHTML = html;
        })
        .catch(error => console.error('Ошибка:', error));
});
