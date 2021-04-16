FROM pytorch/pytorch:1.8.0-cuda11.1-cudnn8-devel

RUN pip install notebook
ENV TZ=Europe/Minsk
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update
RUN apt install python3-opencv -y
COPY ./requirements.txt .
RUN pip install -r requirements.txt