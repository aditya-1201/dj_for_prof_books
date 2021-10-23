# Pull base image
FROM python:3.8
# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /my_code
# Install dependencies
COPY Pipfile Pipfile.lock /my_code/
RUN pip install pipenv && pipenv install --system
# Copy project
COPY . /my_code/