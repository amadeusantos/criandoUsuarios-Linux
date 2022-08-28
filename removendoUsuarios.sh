#!/bin/bash

echo "Removendo pastas"
rm -Rf /adm
rm -Rf /publico
rm -Rf /ven
rm -Rf /sec

echo "Removendo grupos"
groupdel -f grp_adm
groupdel -f grp_ven
groupdel -f grp_sec

echo "Removendo usuarios"
userdel -f -r carlos
userdel -f -r maria
userdel -f -r joao
userdel -f -r debora
userdel -f -r sebastiana
userdel -f -r roberto
userdel -f -r josefina
userdel -f -r amanda
userdel -f -r rogerio
