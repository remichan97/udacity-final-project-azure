# Pull the base image
FROM python:3
# Install depndencies 
RUN pip install redis
RUN pip install opencensus
RUN pip install opencensus-ext-azure
RUN pip install opencensus-ext-flask
RUN pip install opencensus-ext-logging
RUN pip install flask
# Copy the content of the current directory to the /app of the container
ADD . /app
