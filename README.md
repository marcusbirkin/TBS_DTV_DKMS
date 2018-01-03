TBS_DTV_DKMS
============

Very basic DKMS script for TBS DTV drivers from https://github.com/tbsdtv

DKMS will auto recompile these drivers on kernel updates

INSTALL
=======
<pre>
cd /usr/src
git clone https://github.com/marcusbirkin/TBS_DTV_DKMS.git
git submodule update --init --recursive --depth=1
sudo dkms install -m TBS_DTV_DKMS -v github.com_tbsdtv
</pre>

UPDATE
======
<pre>
cd /usr/src/TBS_DTV_DKMS
git submodule update --recursive --remote
sudo dkms remove TBS_DTV_DKMS/github.com_tbsdtv -k $(uname -r)
sudo dkms install -m TBS_DTV_DKMS -v github.com_tbsdtv
</pre>
