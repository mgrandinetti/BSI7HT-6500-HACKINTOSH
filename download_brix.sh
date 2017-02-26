#inizial release
#set -x

function download()
{
    echo "downloading $2:"
    curl --location --silent --output /tmp/org.rehabman.download.txt https://bitbucket.org/RehabMan/$1/downloads
    scrape=`grep -o -m 1 "/RehabMan/$1/downloads/$2.*\.zip" /tmp/org.rehabman.download.txt|perl -ne 'print $1 if /(.*)\"/'`
    url=https://bitbucket.org$scrape
    echo $url
    if [ "$3" == "" ]; then
        curl --remote-name --progress-bar --location "$url"
    else
        curl --output "$3" --progress-bar --location "$url"
    fi
    echo
}


if [ "$1" = "download" ]
  then
  if [ ! -d ./downloads ]; then mkdir ./downloads; fi && rm -Rf downloads/* && cd ./downloads

  # download kexts
  mkdir ./kexts && cd ./kexts
  download os-x-fakesmc-kozlek RehabMan-FakeSMC
  download os-x-eapd-codec-commander RehabMan-CodecCommander
  download os-x-fake-pci-id RehabMan-FakePCIID

  #https://github.com/vit9696/AppleALC/releases/latest

  #download os-x-acpi-debug RehabMan-Debug
  cd ..

  # download tools
fi

if [ "$1" = "kext" ]
  then
  sudo kextcache -system-prelinked-kernel
  sudo kextcache -system-caches
fi
  
