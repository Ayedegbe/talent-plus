FROM python:3.10.0-alpine3.15
WORKDIR /TalentPlus
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
ENTRYPOINT ["python", "app.py"]