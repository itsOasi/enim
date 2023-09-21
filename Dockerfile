FROM node:18
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package*.json ./
RUN npm install
COPY . ./
ENV PORT=8080
EXPOSE 8080
CMD ["npm", "start"]