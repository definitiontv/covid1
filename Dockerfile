FROM node

COPY init.sh .
COPY build.sh .

RUN chmod +x init.sh
RUN chmod +x build.sh

ENTRYPOINT ["/bin/bash"]
CMD ["init.sh"]
