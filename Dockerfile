FROM oven/bun:alpine

LABEL maintainer="afs0027473@agderskolen.no"

WORKDIR /app

COPY package.json .

RUN bun install

COPY . .

EXPOSE 5173

CMD ["bun", "run", "dev"]