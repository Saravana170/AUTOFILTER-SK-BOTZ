# Don't Remove Credit @DP_DEVELOPER_BOTS
# Subscribe YouTube Channel For Amazing Bot @Dp_Bot_Support
# Ask Doubt on telegram @mersal_dhinesh

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /AUTOFILTER-DPBOT
WORKDIR /AUTOFILTER-DPBOT
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
