FROM ddarshana/alpinenode10
# Install "curl" package
RUN apk add --update curl && rm -rf /var/cache/apk/*
# Create app directory
RUN mkdir /app
WORKDIR /app
# copy package.json
COPY package.json .
# Install app dependencies
RUN npm install
# Bundle app source
COPY . .
# Run APP
CMD ["npm", "start"]