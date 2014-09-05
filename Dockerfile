# DOCKER-VERSION 1.1.0
#

FROM opensuse:13.1

MAINTAINER Thomas Schraitle <toms@opensuse.org>

# Add repositories
RUN zypper ar -f http://download.opensuse.org/repositories/Documentation:/Tools/openSUSE_13.1/Documentation:Tools.repo
RUN zypper --non-interactive --gpg-auto-import-keys ref

# Install packages
RUN zypper in -y openSUSE-release lsb-release docbook_4 docbook-xsl-stylesheets



# Always start kiwi
# ENTRYPOINT ["/bin/bash"]
