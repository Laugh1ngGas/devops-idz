FROM rust:latest

RUN apt-get update && apt-get install -y \
    liblapacke-dev \
    libmumps-seq-dev \
    libopenblas-dev \
    libsuitesparse-dev

WORKDIR /app

COPY . .

RUN cargo build --release --bin example1
# RUN cargo build --bin example1

CMD ["./target/release/example1"]
# CMD ["./target/debug/example1"]
