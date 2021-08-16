FROM ubuntu
RUN apt-get update && apt-get upgrade -y && apt-get install -y python3 python3-pip
COPY . /SF_site
RUN cd /SF_site && pip install -r requirements.txt
CMD ["/usr/bin/python3", "/SF_site/sf_test_app.py"]
