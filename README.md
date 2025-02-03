
# AI Coding Assistant

The **AI Coding Assistant** is a Streamlit-based web application that leverages AI to help you analyze your code. It features two main functionalities:

- **Code Bug Finder & Optimizer:** Detect bugs, spelling mistakes, and receive optimization suggestions for your code.
- **PEP8 Guidelines Checker:** Analyze your Python code for PEP8 compliance and get recommendations for improvements.

This repository provides a Docker-based setup to easily build and run the application.

## Features

- **Interactive Web Interface:** Use Streamlit for a user-friendly code analysis interface.
- **Dual Functionality:**
  - **Bug Finder & Optimizer:** Automatically detects common issues in your code and suggests fixes.
  - **PEP8 Checker:** Checks your Python code against PEP8 guidelines.
- **AI-Powered Analysis:** Utilizes the Groq API for advanced language model completions.
- **Dockerized Deployment:** Easily build and run the application using Docker.

## Prerequisites

- [Docker](https://www.docker.com/get-started) must be installed on your system.
- An environment variable `GROQ` must be set with your Groq API credentials.

## Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/We4TechAI/AI-Coding-Assistant.git
   cd AI-Coding-Assistant
   ```

2. **Set the required environment variable:**

   Ensure you have your Groq API key or configuration ready. For example, you can set it in your shell (or add it to your Docker environment):

   ```bash
   export GROQ="your_groq_api_key_or_configuration"
   ```

## Docker Usage

Build the Docker image:

```bash
docker build --tag ai_coding_assistant:latest .
```

Run the Docker container:

```bash
docker run -d --name ai_coding_assistant -p 8501:8501 ai_coding_assistant:latest
```

After running the container, open your browser and navigate to `http://localhost:8501` to access the application.

## Running Locally (Without Docker)

If you prefer to run the application directly (make sure you have Python 3.7+ installed), follow these steps:

1. **Install the required dependencies:**

   ```bash
   pip install -r requirements.txt
   ```

2. **Run the Streamlit application:**

   ```bash
   streamlit run app.py
   ```

3. Open your browser and go to `http://localhost:8501`.

## Demo Code for Testing

To quickly test the functionalities, use the following demo snippets in the respective pages of the application:

### Code Bug Finder & Optimizer

```python
def calculate_area(radius):
    # Intentional misspelling of 'print'
    pritn("Calculating area...")
    area = 3.14 * radius * radius
    return area

# Bug: Passing a string instead of a number to calculate_area
result = calculate_area("10")
print("Area:", result)
```

### PEP8 Guidelines Checker

```python
def calculate_area(radius):
  # Incorrect indentation and missing docstring
  area=3.14*radius*radius
  return area

def main():
  r=10
  area=calculate_area(r)
  print("The area is: ",area)

main()
```

## Contributing

Contributions are welcome! If you have suggestions, improvements, or bug fixes, please create a pull request or open an issue.

## License

This project is licensed under the [MIT License](LICENSE).

## Contact

For any questions or feedback, please reach out via GitHub issues or directly to the repository maintainers.

