#!/bin/sh

# Replace third party binaries with arm64 architecture builds

curl -L https://github.com/Jigsaw-Code/outline-ss-server/releases/download/v1.3.5/outline-ss-server_1.3.5_linux_arm64.tar.gz | tar -xz -C "${ROOT_DIR}/third_party/outline-ss-server/linux/" outline-ss-server
curl -L https://github.com/prometheus/prometheus/releases/download/v2.33.5/prometheus-2.33.5.linux-arm64.tar.gz | tar -xz --strip-components=1 -C "${ROOT_DIR}/third_party/prometheus/linux" prometheus-2.33.5.linux-arm64/prometheus
