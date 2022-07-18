FROM python:3.9.1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt requirments.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r requirments.txt
COPY . /app
EXPOSE 8000