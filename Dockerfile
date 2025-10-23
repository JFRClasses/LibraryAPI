FROM node:bookworm AS dev
WORKDIR /app
RUN chown -R node:node /app
USER node
COPY --chown=node:node package*.json tsconfig.json ./
RUN npm install
COPY --chown=node:node . .
EXPOSE 3000
CMD ["npm", "run", "dev"]
