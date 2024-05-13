# Migración de VDI a Proxmox

Para hacer la migración de archivos VDI (Virtualbox) hacia Proxmox, se necesita de lo siguiente:
- Archivo VDI
- Ordenador local
- Un servidor Proxmox (capaz de conectarse a Internet y a la misma red que el ordenador local)


## Paso 1: Transferencia del VDI al Proxmox

Desde el ordenador local, comprobamos que tenemos ping entre el ordenador y el Proxmox.

´´´ps1
ping $IP_PROXMOX
´´´

Una vez hemos hecho el ping y tenemos respuesta, enviamos el VDI al Proxmox con SCP. 

La sintaxis debería ser:
´´´ps1
scp archivo.vdi root@192.168.1.x:/root
´´´´
**IMPORTANTE**: El usuario root y la carpeta deben ser tal cual, ya que se hará la copia al local de proxmox
