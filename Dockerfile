FROM python:3.10.1 
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1 
WORKDIR /app  
COPY /requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt  
COPY . /app 
EXPOSE 8000
ENTRYPOINT ["python", "dapp/manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
