// Функция для загрузки данных из файла data.json
async function loadAppsData() {
  try {
    const response = await fetch('data.json');
    if (!response.ok) {
      throw new Error('Не удалось загрузить данные');
    }
    const appsData = await response.json();
    displayApps(appsData);
  } catch (error) {
    console.error('Ошибка при загрузке данных:', error);
  }
}

// Функция для отображения списка приложений
function displayApps(apps) {
  const appsList = document.getElementById('appsList');
  appsList.innerHTML = ''; // Очистка текущего списка

  apps.forEach(app => {
    const appCard = document.createElement('div');
    appCard.className = 'app-card';
    
    const appImage = document.createElement('img');
    appImage.src = app.image;
    appImage.alt = app.name;
    
    const appTitle = document.createElement('h3');
    appTitle.textContent = app.name;
    
    const appDesc = document.createElement('p');
    appDesc.textContent = app.description;
    
    const appCategory = document.createElement('p');
    appCategory.textContent = `Категория: ${app.category}`;
    appCategory.style.fontStyle = 'italic';
    appCategory.style.fontSize = '0.85em';

    const downloadButton = document.createElement('button');
    downloadButton.textContent = 'Скачать'; // Текст на кнопке
    downloadButton.onclick = () => {
      alert(`Скачивание ${app.name}`);
    };

    appCard.appendChild(appImage);
    appCard.appendChild(appTitle);
    appCard.appendChild(appDesc);
    appCard.appendChild(appCategory);
    appCard.appendChild(downloadButton); // Добавление кнопки

    appsList.appendChild(appCard);
  });
}

// Функция фильтрации приложений по введённому запросу
function filterApps() {
  const query = document.getElementById('searchInput').value.toLowerCase();
  const appsList = document.getElementById('appsList');
  const appsCards = appsList.getElementsByClassName('app-card');
  
  Array.from(appsCards).forEach(card => {
    const title = card.querySelector('h3').textContent.toLowerCase();
    const description = card.querySelector('p').textContent.toLowerCase();
    const category = card.querySelectorAll('p')[1].textContent.toLowerCase();
    
    if (title.includes(query) || description.includes(query) || category.includes(query)) {
      card.style.display = '';
    } else {
      card.style.display = 'none';
    }
  });
}

// Инициализация при загрузке страницы
document.addEventListener('DOMContentLoaded', () => {
  loadAppsData();
  document.getElementById('searchInput').addEventListener('input', filterApps);
});
