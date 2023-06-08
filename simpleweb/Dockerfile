
#specify a base image
FROM node:14-alpine

#copy files from local machine system to inside the container
# first ./ refer to the path in local machine, the second ./ path refer to container path
COPY ./ ./

#install dependencies
RUN npm install

#Default command
CMD ["npm","start"]