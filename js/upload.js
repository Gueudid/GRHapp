document.getElementById("uploadForm").addEventListener("submit", async function (event) {
    event.preventDefault();
    
    let appName = document.getElementById("appName").value;
    let file = document.getElementById("apkFile").files[0];

    let formData = new FormData();
    formData.append("file", file);

    let response = await fetch(`https://api.github.com/repos/Gueudid/GRHapp/contents/uploads/${file.name}`, {
        method: "PUT",
        headers: {
            "Authorization": "token YOUR_GITHUB_TOKEN",
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            message: `Upload ${file.name}`,
            content: await file.text()
        })
    });

    if (response.ok) {
        alert("Файл загружен!");
    } else {
        alert("Ошибка загрузки!");
    }
});
