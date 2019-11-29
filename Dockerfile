FROM python:latest

WORKDIR /root
RUN apt update -y; apt install apt-utils git net-tools dnsutils \
 mtr whois python-pip nmap httpie -y

RUN git clone https://github.com/BullsEye0/ghost_eye.git
WORKDIR /root/ghost_eye
RUN pip install -r requirements.txt

CMD ["python","ghost_eye.py"]

