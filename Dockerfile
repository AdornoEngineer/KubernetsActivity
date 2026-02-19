FROM alpine:3.8

WORKDIR /var/webapp

RUN apk add --no-cache python3 py3-pip

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

ENV EXAMPLE_VARIABLE=example

EXPOSE 5000

ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]

