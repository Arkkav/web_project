### Настройка nginx и gunicorn

Веб-сервер раздает статические файлы из папок на диске через 80 порт.<br/>
Соответствие URLs и расположения файлов на диске:
- Все URL, начинающиеся с /uploads/  (например /uploads/1.jpeg) отдаются из директории /home/box/web/uploads
- Все URL с расширением (например /img/1.jpeg) отдаются из директории /home/box/web/public
- Все URL без расширения (например /question/123)  возвращают HTTP 404

Связка с gunicorn:
- URL с префиксом /hello/ возвращает параметры GET запроса в виде списка.

#### Запуск веб-сервера 
```bash
bash /home/box/web/init.sh
```

#### Примеры использования:
http://localhost/uploads/1.png <br/>
http://localhost/img/images.jpeg <br/>
http://localhost/img/images
http://127.0.0.1/hello/a=1&a=2&b=3

