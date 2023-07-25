FROM perl:5
RUN cpanm Mojolicious && cpanm Sisimai
EXPOSE 3000
WORKDIR /opt
COPY sisimai.pl .
CMD ["perl", "sisimai.pl", "daemon"]