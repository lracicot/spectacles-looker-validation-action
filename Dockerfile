FROM python:3.8-alpine

RUN apk add --update py-pip
RUN pip install spectacles

ENV LOOKER_BASE_URL=
ENV LOOKER_CLIENT_ID=
ENV LOOKER_CLIENT_SECRET=
ENV INPUT_LOOKML_PROJECT=
ENV INPUT_BRANCH=
ENV INPUT_VALIDATOR=

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]