# DOCKER-VERSION 1.1.0
#
#
#

FROM opensuse:13.1

MAINTAINER Thomas Schraitle <toms@opensuse.org>

RUN zypper ar -f http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_13.1/

# make sure the package repository is up to date
RUN zypper --non-interactive --gpg-auto-import-keys ref

RUN zypper in -y lsb-release


# Always start kiwi
ENTRYPOINT ["/bin/bash"]
