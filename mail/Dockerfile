FROM python:2.7 as twisted_build_stage
RUN pip install twisted

FROM python:2.7-slim

# RUN pip install twisted
COPY --from=twisted_build_stage \
    /usr/local/lib/python2.7/site-packages/ \
    /usr/local/lib/python2.7/site-packages/
    
RUN useradd -ms /bin/bash user

ADD code /code
RUN chown -R user:user /code
USER user
WORKDIR /code

CMD ["python", "main.py"]

