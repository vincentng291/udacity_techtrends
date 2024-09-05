FROM python:3.8.19-alpine3.19 as builder

ADD /techtrends/requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY techtrends .

EXPOSE 3111

RUN python init_db.py

CMD ["python", "app.py"]