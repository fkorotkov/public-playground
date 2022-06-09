FROM fedora:latest

RUN dnf -y update && \
    dnf -y install python3 curl jq git zip unzip bzip2 xz diffutils patchutils which \
    gcc gcc-c++ clang clang-libs clang-devel nasm yasm pkg-config make cmake ninja-build meson && \
    dnf clean all

CMD "/bin/bash"
