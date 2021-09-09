FROM python:3.8

RUN apt update && apt upgrade -y

RUN /usr/local/bin/python -m pip install --upgrade pip

# pandoc
RUN curl -sSLO https://github.com/jgm/pandoc/releases/download/2.14.2/pandoc-2.14.2-1-amd64.deb && \
    dpkg -i pandoc-2.14.2-1-amd64.deb && \
    rm pandoc-2.14.2-1-amd64.deb

# gdoc
RUN git clone https://github.com/tyskdm/gdoc.git /workspaces/gdoc && \
    cd /usr/local/bin && \
    ln -s /workspaces/gdoc/bin/gdoc . && \
    chmod a+x /workspaces/gdoc/bin/gdoc

# For PlantUML
RUN apt install -y default-jre graphviz fonts-migmix
# In addtion,
# 1. download plantuml.jar into ../domain/library/plantuml/bin/plantuml-jar/
#    from `https://plantuml.com/download`.
# 2. add execution path to `../domain/library/plantuml/bin/plantuml` or run `./setup` inside container.
#
# Some other japanese-fonts are:
# fonts-ipafont fonts-takao-mincho fonts-takao-gothic fonts-migmix fonts-noto-cjk

# Copy your own .bashrc to home dir of root.
# Comment it out if you don't need it.
COPY .devcontainer/.bashrc /root/
