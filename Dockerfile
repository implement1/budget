FROM node:12-slim
EXPOSE 3000
# Set production mode and use app-db as the database host
ENV NODE_ENV=development  MONGO_HOST=appdb
ENV PORT 3000
# Set working directory to where source is
WORKDIR /usr/src/app
# Copy source files into container
COPY . .
# Install production dependencies and build app
RUN yarn install && yarn build
CMD ["yarn", "dem"]
