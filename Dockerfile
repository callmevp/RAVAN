FROM callmevp/VISA-SPAM-BOT:latest

#clonning repo 
RUN git clone https://github.com/callmevp/VISA-SPAM-BOT.git /root/hellbot

#working directory 
WORKDIR /root/visabot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","visabot"]
