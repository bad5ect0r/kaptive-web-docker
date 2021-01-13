FROM python:2.7
RUN pip install pygal pillow BioPython==1.76 reportlab lxml
WORKDIR /opt
RUN git clone --recursive https://github.com/web2py/web2py.git
WORKDIR /opt/web2py/applications
COPY ./kaptive ./kaptive
COPY ./kaptive-CLI ./kaptive-CLI
RUN cp ./kaptive-CLI/kaptive.py ./kaptive
RUN cp -r ./kaptive-CLI/reference_database ./kaptive
WORKDIR /opt/web2py
RUN openssl genrsa -out server.key 2048
RUN openssl req -new -batch -key server.key -out server.csr
RUN openssl x509 -req -days 365 -in server.csr -signkey server.key -out server.crt
CMD python web2py.py -a 'password' -c server.crt -k server.key -i 0.0.0.0 -p 8000
