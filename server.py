import http.server
import socketserver
import json
import os

PORT = 2555
DIRECTORY = os.getcwd()

class CustomHandler(http.server.SimpleHTTPRequestHandler):
    def do_GET(self):
        # Отдаём data.json
        if self.path == "/data.json":
            self.send_response(200)
            self.send_header("Content-type", "application/json")
            self.end_headers()
            try:
                with open("data.json", "r", encoding="utf-8") as f:
                    data = json.load(f)
                    self.wfile.write(json.dumps(data, ensure_ascii=False, indent=4).encode("utf-8"))
            except FileNotFoundError:
                self.wfile.write(json.dumps({"error": "data.json not found"}).encode("utf-8"))
        # Отдаём APK-файлы
        elif self.path.startswith("/apk/"):
            file_path = self.path.lstrip("/")
            if os.path.exists(file_path):
                self.send_response(200)
                self.send_header("Content-type", "application/vnd.android.package-archive")
                self.end_headers()
                with open(file_path, "rb") as f:
                    self.wfile.write(f.read())
            else:
                self.send_error(404, "APK file not found")
        # Все остальные файлы (HTML, CSS, JS, иконки)
        else:
            super().do_GET()

handler = CustomHandler
handler.extensions_map.update({
    ".html": "text/html",
    ".css": "text/css",
    ".js": "application/javascript",
    ".json": "application/json",
    ".png": "image/png",
    ".jpg": "image/jpeg",
    ".jpeg": "image/jpeg",
    ".apk": "application/vnd.android.package-archive"
})

with socketserver.TCPServer(("", PORT), handler) as httpd:
    print(f"Сервер запущен на порту {PORT}")
    httpd.serve_forever()