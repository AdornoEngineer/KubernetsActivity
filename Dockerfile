FROM apline:3.8
RUN mkdir /var/webapp
COPY . /var/webappq
ENV EXAMPLE_VARIABLE=example
WORKDIR /var/webapp/
RUN apk add python3
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT [ "python3" ]
CMD [ "app.py" ]