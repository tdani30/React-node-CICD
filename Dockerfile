FROM node:10 AS ui-build
WORKDIR /usr/src/my-app
COPY package*.json ./
RUN yarn install
COPY . .
RUN yarn run build
EXPOSE 3000
CMD ["yarn", "start"]



# FROM node:10 AS ui-build
# WORKDIR /usr/src/app
# COPY my-app/ ./my-app/
# RUN cd my-app && npm install
# COPY  . /my-app/

# RUN npm run build

# FROM node:10 AS server-build
# WORKDIR /root/
# COPY --from=ui-build /usr/src/app/my-app/build ./my-app/build
# COPY api/package*.json ./api/
# RUN cd api && npm install
# COPY api/server.js ./api/

# EXPOSE 3080

# CMD ["node", "./api/server.js"]