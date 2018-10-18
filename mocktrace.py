"""Catch all flask server to chirp out what ddtrace is emiting"""
import re

from flask import Flask, request

app = Flask(__name__)


@app.route(
    '/',
    defaults={'path': ''},
    methods=["GET", "PUT", "PATCH", "DELETE"],
)
@app.route(
    '/<path:path>',
    methods=["GET", "PUT", "PATCH", "DELETE"],
)
def catch_all(path):
    print(
        request.host,
        request.path,
        re.sub(r"\.+", " ", ''.join(
                [str(chr(x)) if 31 < x < 127 else '.' for x in request.data]
            )),
    )
    return "", 200


if __name__ == '__main__':
    app.run(port=8126)
