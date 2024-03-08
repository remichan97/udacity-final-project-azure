FROM python:3

RUN pip install redis
RUN pip install opencensus
RUN pip install opencensus-ext-azure
RUN pip install opencensus-ext-requests
RUN pip install opencensus-ext-flask
RUN pip install opencensus-ext-logging
RUN pip install flask

ENV app_insight=14f3fe0c-6e77-409e-bb66-d3547fd180d2

COPY . .

CMD [ "python", "./main.py" ]

EXPOSE 8080