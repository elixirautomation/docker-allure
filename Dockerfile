FROM anapsix/alpine-java
MAINTAINER Abhilash Sharma

RUN mkdir /allure
RUN mkdir /allure-results
RUN mkdir /allure-report
RUN mkdir /allure-config

RUN apk update && \
	apk add ca-certificates && \
	update-ca-certificates && \
	apk add openssl && \
	apk add unzip

RUN wget https://github.com/allure-framework/allure2/releases/download/2.15.0/allure-2.15.0.tgz
RUN tar -zxvf allure-2.15.0.tgz
RUN cp -r /allure-2.15.0/* /allure
RUN rm -rf allure-2.15.0
RUN rm allure-2.15.0.tgz 
ENV PATH="/allure/bin:${PATH}"
ENV ALLURE_CONFIG="/allure-config/allure.properties"
