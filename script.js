document.addEventListener("DOMContentLoaded", () => {
    fetch('data.json')
        .then(response => response.json())
        .then(data => {
            const downloadButton = document.getElementById("downloadButton");

            if (downloadButton) {
                downloadButton.addEventListener("click", () => {
                    if (data.apk_files.length > 0) {
                        const firstApk = data.apk_files[0]; // Берём первый APK
                        window.location.href = firstApk.download_link; // Открываем ссылку
                    } else {
                        alert("Файлы APK не найдены!");
                    }
                });
            }
        })
        .catch(error => console.error("Ошибка загрузки JSON:", error));
});
