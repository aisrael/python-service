FROM python:3.7-slim

WORKDIR /usr/src/app

# Sets utf-8 encoding for Python
ENV LANG=C.UTF-8
# Turns off writing .pyc files. Superfluous on an ephemeral container.
ENV PYTHONDONTWRITEBYTECODE=1
# Seems to speed things up
ENV PYTHONUNBUFFERED=1

# Install Python deps
COPY pyproject.toml ./
RUN pip install poetry==1.2.0 && poetry install

# Copy in rest of source code
COPY . .

# Entrypoint
ENTRYPOINT ["poetry"]
CMD ["run", "--", "uvicorn", "app.app:app", "--host", "0.0.0.0", "--port", "8000", "--reload", "--workers", "1", "--timeout-keep-alive", "80"]
