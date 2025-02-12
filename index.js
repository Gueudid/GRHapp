document.addEventListener('DOMContentLoaded', () => {
    fetch('/data.json') // Абсолютный путь
        .then(response => {
            if (!response.ok) {
                throw new Error(`Ошибка загрузки: ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            console.log('Данные загружены:', data);
            const container = document.getElementById('app-list');

            if (!container) {
                console.error('Контейнер app-list не найден!');
                return;
            }

            let html = '';
            data.apps.forEach(app => {
                html += `
                    <div class="app-card">
                        <img src="${app.image || 'placeholder.png'}" alt="${app.name}">
                        <h3>${app.name}</h3>
                        <p>${app.description || 'Описание отсутствует'}</p>
                        <a href="${app.file}" class="download-btn">Скачать</a>
                    </div>
                `;
            });

            container.innerHTML = html;
        })
        .catch(error => console.error('Ошибка:', error));
});
