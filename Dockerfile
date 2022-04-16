FROM python:3.6-alpine
RUN mkdir -p /application
COPY . /application
WORKDIR /application
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python3"]
CMD ["app.py"]
