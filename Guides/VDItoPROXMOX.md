# Migración de VDI a Proxmox

Para hacer la migración de archivos VDI (Virtualbox) hacia Proxmox, se necesita de lo siguiente:
- Archivo VDI
- Ordenador local
- Un servidor Proxmox (capaz de conectarse a Internet y a la misma red que el ordenador local)


## Paso 1: Transferencia del VDI al Proxmox

Desde el ordenador local, comprobamos que tenemos ping entre el ordenador y el Proxmox.

´´´cmd
ping $IP_PROXMOX
´´´

Una vez hemos hecho el ping y tenemos respuesta, enviamos el VDI al Proxmox con SCP. 

La sintaxis debería ser:
´´´python

´´´´