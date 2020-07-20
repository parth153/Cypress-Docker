FROM cypress/base:12.18.0
RUN mkdir /e2e
WORKDIR /e2e
COPY . /e2e
RUN npm install
RUN $(npm bin)/cypress verify
RUN ["npm", "run", "cy:run"]