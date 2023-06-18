#!/bin/bash

export COMPONENTNAME="mint"
export PRODUCTNAME1="Linux Mint"
export PRODUCTNAME2="Linux Mint Remaster"
export PRODUCTNAME3="Linux Mint"
export VERSION1=""$(lsb_release -sr)" ("$(lsb_release -sc)")"
export VERSION2=""$(lsb_release -sr)""
export VERSION3="Remaster "$(lsb_release -sd)" ("$(lsb_release -sc)")"
export VERSION4=""$(lsb_release -sd)""
export PRODUCTURL1="https:\/\/www.linuxmint.com"
export PRODUCTURL2="https:\/\/community.linuxmint.com"
export PRODUCTURL3="https:\/\/linuxmint.com/rel_ulyssa_mate.php"

sudo cp -af branding.desc.mod branding.desc

sudo sed -i "/componentName/s/COMPONENTNAME/$COMPONENTNAME/" branding.desc
sudo sed -i "/productName/s/PRODUCTNAME1/$PRODUCTNAME1/" branding.desc
sudo sed -i "/shortProductName/s/PRODUCTNAME2/$PRODUCTNAME2/" branding.desc
sudo sed -i "/version/s/VERSION1/$VERSION1/" branding.desc
sudo sed -i "/shortVersion/s/VERSION2/$VERSION2/" branding.desc
sudo sed -i "/versionedName/s/VERSION3/$VERSION3/" branding.desc
sudo sed -i "/shortVersionedName/s/VERSION4/$VERSION4/" branding.desc
sudo sed -i "/bootloaderEntryName/s/PRODUCTNAME3/$PRODUCTNAME3/" branding.desc
sudo sed -i "/productUrl/s/PRODUCTURL1/$PRODUCTURL1/" branding.desc
sudo sed -i "/supportUrl/s/PRODUCTURL2/$PRODUCTURL2/" branding.desc
sudo sed -i "/releaseNotesUrl/s/PRODUCTURL3/$PRODUCTURL3/" branding.desc
