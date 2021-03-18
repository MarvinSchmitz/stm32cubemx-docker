FROM openjdk:8u282-jre-buster

RUN apt-get update && \
    apt-get -y install --no-install-recommends \
    unzip \
    libc6 \
    libxext-dev \
    libxrender-dev \
    libxtst-dev \
    libfreetype6 \
    && rm -rf /var/lib/apt/lists/*

ADD en.stm32cubemx.zip /tmp/en.stm32cubemx.zip
ADD auto-install.xml /tmp/auto-install.xml

WORKDIR /tmp

RUN unzip en.stm32cubemx.zip \
    && /tmp/SetupSTM32CubeMX-6.2.0 auto-install.xml \
    && rm -rf /tmp \
