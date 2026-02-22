#!/bin/bash

set -e

# vars
giulia_manifest="$HOME/Zobs/manifests/giulia/giulia.xml"
manifest="$HOME/Zobs/manifests/manifest.xml"
giuliac_manifest="$HOME/Zobs/manifests/giuliac/giuliac.xml"
giuliac_tesingtrees_manifest="$HOME/Zobs/manifests/giuliac-tesingtrees/giuliac-tesingtrees.xml"

echo "

▗▄▄▄▄▖ ▗▄▖ ▗▄▄▖ ▗▖ ▗▖ ▗▄▖ 
   ▗▞▘▐▌ ▐▌▐▌ ▐▌▐▌▗▞▘▐▌ ▐▌
 ▗▞▘  ▐▌ ▐▌▐▛▀▘ ▐▛▚▖ ▐▛▀▜▌
▐▙▄▄▄▖▝▚▄▞▘▐▌   ▐▌ ▐▌▐▌ ▐▌
                          "

# first path
read -p "select path of ur rom? (e.g. $HOME/lineage/): " dest_path

read -p "clone all? y/n: " dis

if [ "$dis" == "y" ]; then
  echo "cloning giulia..."
  rm -rf "$dest_path/.repo/manifest.xml"
  mkdir -p "$dest_path/.repo/manifests"
  cp -r "$giulia_manifest" "$dest_path/.repo/manifests"
  cp -r "$giuliac_manifest" "$dest_path/.repo/manifests"
  cp -r "$giuliac_tesingtrees_manifest" "$dest_path/.repo/manifests"
  cp -r "$manifest" "$dest_path/.repo"
  echo "done dis."
else
  echo "fuck u then"
fi
