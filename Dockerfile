FROM node:10.16-jessie-slim
MAINTAINER "Manabu TERADA" <terada@cmscom.jp>

RUN apt-get update -y
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN npx @plone/create-volto-app my-volto-app
WORKDIR /my-volto-app

CMD ["yarn", "start"]
#CMD ["/bin/bash"]
