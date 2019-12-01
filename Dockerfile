FROM python:latest

RUN apt update -y; apt install apt-utils git net-tools dnsutils \
 mtr whois python-pip nmap httpie nano less -y
WORKDIR /root
RUN git clone https://github.com/BullsEye0/ghost_eye.git
WORKDIR /root/ghost_eye
COPY fix_ghost_eye_script .
RUN ./fix_ghost_eye_script
RUN pip install -r requirements.txt

ENTRYPOINT ["python","ghost_eye.py"]
