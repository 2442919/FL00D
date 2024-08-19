Română
Acest script Bash permite trimiterea unui flood de pachete ICMP (ping) către o destinație specificată. Utilizatorul poate specifica dimensiunea pachetelor (în biți, megabytes sau gigabytes) și intervalul de timp între trimiterea fiecărui pachet. Scriptul rulează ping în fundal cu opțiunile specificate, oferind un test de stres pentru rețea.

Spaniolă
Este script Bash permite el envío de un flood de paquetes ICMP (ping) a un destino especificado. El usuario puede especificar el tamaño de los paquetes (en bits, megabytes o gigabytes) y el intervalo de tiempo entre el envío de cada paquete. El script ejecuta ping en segundo plano con las opciones especificadas, proporcionando una prueba de estrés para la red.

Engleză
This Bash script allows sending an ICMP (ping) flood to a specified target. The user can specify the packet size (in bits, megabytes, or gigabytes) and the interval between each packet. The script runs ping in the background with the specified options, providing a stress test for the network.

Usage:

Română
bash
Copy code
./flood_ping.sh 192.168.1.1 M 0.5
În acest exemplu, scriptul trimite un flood de pachete ICMP către adresa IP 192.168.1.1 cu dimensiunea fiecărui pachet setată la 1 megabyte (M) și cu un interval de 0.5 secunde între fiecare pachet.

Spaniolă
bash
Copy code
./flood_ping.sh 192.168.1.1 M 0.5
En este ejemplo, el script envía un flood de paquetes ICMP a la dirección IP 192.168.1.1 con un tamaño de paquete de 1 megabyte (M) y un intervalo de 0.5 segundos entre cada paquete.

Engleză
bash
Copy code
./flood_ping.sh 192.168.1.1 M 0.5
In this example, the script sends an ICMP flood to the IP address 192.168.1.1 with each packet size set to 1 megabyte (M) and an interval of 0.5 seconds between each packet.
./flood_ping.sh 192.168.1.1 M 0.5
