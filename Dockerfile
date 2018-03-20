FROM python
RUN apt-get update ; apt-get install -y  fonts-ipafont ; apt-get clean

# Built from https://github.com/shinofara/docker-seqdiag
RUN pip install pillow funcparserlib blockdiag seqdiag actdiag nwdiag reportlab
VOLUME ["/work"]
WORKDIR /work

ENTRYPOINT ["seqdiag"]
CMD ["./diag/sample.diag"]
