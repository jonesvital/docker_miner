FROM amd64/ubuntu:22.04
RUN apt update && apt upgrade -y && apt install -y libc6 && apt clean
WORKDIR /app
COPY . .
RUN chmod +x xmrig
ENTRYPOINT [ "./xmrig" ]