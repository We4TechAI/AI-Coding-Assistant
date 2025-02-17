# Use an official Python runtime as a parent image
FROM python:3.11
# Set the working directory in the container
WORKDIR /app

# Copy the requirements file first (to leverage caching)
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

EXPOSE 8501
# Expose the port FastAPI runs on

CMD ["streamlit", "run", "ai_coding_assistant.py"]



docker build --tag ai_coding_assistant:latest .
docker run -d --name ai_coding_assistant -p 8501:8501 ai_coding_assistant:latest
