FROM node:18

# work dir 
WORKDIR /usr/src/app

# copy package.json
# COPY package.json ./
# COPY yarn.lock ./

# install 
# RUN yarn install 
RUN npm install --global serve

# copy source files 
COPY dist ./ 

# build
# RUN yarn build 

# expose 
EXPOSE 3000

CMD [ "serve", "./dist" ]
