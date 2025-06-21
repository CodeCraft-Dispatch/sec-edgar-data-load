FROM rust:1.72-slim as builder
WORKDIR /app
COPY . .
RUN cargo build --release

FROM debian:bullseye-slim
COPY --from=builder /app/target/release/your-binary /usr/local/bin/your-binary
ENTRYPOINT ["your-binary"]
