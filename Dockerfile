FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN pip3 install -U pip && pip3 install -U -r requirements.txt

RUN mkdir /Auto-search-tamil-bot
WORKDIR /Auto-search-tamil-bot

# Make sure the service is running on port 8080
EXPOSE 8080

# Copy the start.sh script and make it executable
COPY start.sh /Auto-search-tamil-bot/start.sh
RUN chmod +x /Auto-search-tamil-bot/start.sh

# Run the start.sh script
CMD ["/Auto-search-tamil-bot/start.sh"]