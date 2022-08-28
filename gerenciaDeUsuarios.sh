#!/bin/bash

echo "Criando pastas"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios"
groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

Echo "Criando usuarios"
useradd carlos -c "Carlos" -p $(openssl passwd -crypt carlos227) -G grp_adm -m -s /bin/bash
useradd maria -c "Maria" -p $(openssl passwd -crypt maria627) -G grp_adm -m -s /bin/bash
useradd joao -c "Joao" -p $(openssl passwd -crypt joao562) -G grp_adm -m -s /bin/bash

useradd debora -c "Debora" -p $(openssl passwd -crypt debora337) -G grp_ven -m -s /bin/bash
useradd sebastiana -c "Sebastiana" -p $(openssl passwd -crypt sebastiana722) -G grp_ven -m -s /bin/bash
useradd roberto -c "Roberto" -p $(openssl passwd -crypt roberto762) -G grp_ven -m -s /bin/bash

useradd josefina -c "Josefina" -p $(openssl passwd -crypt josefina563) -G grp_sec -m -s /bin/bash
useradd amanda -c "Amanda" -p $(openssl passwd -crypt amanda262) -G grp_sec -m -s /bin/bash
useradd rogerio -c "Rogerio" -p $(openssl passwd -crypt rogerio764) -G grp_sec -m -s /bin/bash

passwd carlos -e
passwd maria -e
passwd joao -e
passwd debora -e
passwd sebastiana -e
passwd roberto -e
passwd josefina -e
passwd amanda -e
passwd rogerio -e

echo "Config pastas"
chown root:grp_adm /adm
chown root:grp_ven /ven
chown root:grp_sec /sec

echo "Permicoes de acesso as pastas"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
