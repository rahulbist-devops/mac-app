FROM python:3.6.6
ARG macaddress
ARG apikey
WORKDIR /usr/src/app
COPY . .

RUN pip install pip==19.0.1 && \
    pip install pipenv==2018.11.26 && \
    pipenv install && \
    pipenv run python -m mac  

    
    

