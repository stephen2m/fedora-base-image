FROM fedora:latest
RUN dnf -y update
RUN dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
RUN dnf install findutils unzip zip git python3-devel dnf-plugins-core -y && dnf clean all
CMD ["/bin/bash"]