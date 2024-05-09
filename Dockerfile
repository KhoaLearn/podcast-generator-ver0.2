FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3-pip \
    git 


# # Creating and setting permissions for necessary directories
# RUN mkdir -p /var/lib/apt/lists/partial && chmod -R 755 /var/lib/apt

# # Create a virtual environment and install packages
# RUN python3.10 -m venv /opt/venv
# ENV PATH="/opt/venv/bin:$PATH"
RUN pip install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
