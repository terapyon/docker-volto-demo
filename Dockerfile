FROM node:12.19-buster-slim
LABEL maintainer="Manabu TERADA<terada@cmscom.jp>"

RUN apt-get update -y
RUN curl -o- -L https://yarnpkg.com/install.sh | bash
RUN npx @plone/create-volto-app my-volto-app
WORKDIR /my-volto-app
RUN yarn

CMD ["yarn", "start"]
#CMD ["/bin/bash"]
