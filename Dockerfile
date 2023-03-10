FROM alpine.17.2
RUN apt-get update
RUN apt-get install python
ADD timarcus.py /home/timarcus.py
CMD python /home/timarcus.py
