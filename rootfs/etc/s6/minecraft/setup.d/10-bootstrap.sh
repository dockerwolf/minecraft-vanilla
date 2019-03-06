#!/bin/bash
source /usr/bin/entrypoint

echo "> copy template files"
find /minecraft/template -mindepth 1 -type f -print0 | while read -d $'\0' TEMPLATE
do
  RELATIVENAME=${TEMPLATE//\/minecraft\/template\//}

  mkdir -p "$(dirname "/minecraft/${RELATIVENAME}")"
  cp -f "${TEMPLATE}" "/minecraft/${RELATIVENAME}"
done

echo "> linking merge files"
find /minecraft/merge -mindepth 1 -type f -print0 | while read -d $'\0' MERGE
do
  RELATIVENAME=${MERGE//\/minecraft\/merge\//}

  mkdir -p "$(dirname "/minecraft/${RELATIVENAME}")"
  rm -f "/minecraft/${RELATIVENAME}"
  ln -sf "/minecraft/merge/${RELATIVENAME}" "/minecraft/${RELATIVENAME}"
done

if [ -n "${SERVER_MOTD}" ]
then
  echo "> writing motd message"
  sed -i \
    -e "s/motd=.*/motd=${SERVER_MOTD}/" \
    /minecraft/server.properties
fi

if [ -n "${SERVER_RCONPWD}" ]
then
  echo "> writing rcon password"
  sed -i \
    -e "s/rcon\.password=.*/rcon\.password=${SERVER_RCONPWD}/" \
    /minecraft/server.properties
fi
