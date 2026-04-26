FROM python:3.11-slim

# Install tesseract
RUN apt-get update && apt-get install -y tesseract-ocr

# Set working dir
WORKDIR /app

# Copy files
COPY . .

# Install python deps
RUN pip install --no-cache-dir -r requirements.txt

# Run app
CMD ["python", "app.py"]