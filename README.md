# Yff_Worm_prosjekt
## Ikke run dette på din personlige PC
# Linux mint Worm/Fork bomb shell bash Script/ Virus

## Hva er målet mitt med dette prosjektet? 
* Målet mitt for dette prosjektet er å lage et script som kopierer seg selv som ofte går under navnet worm
* Jeg har lyt til at dette scriptet skal hovedsakli fungere på linux terminal og mac os
* Jeg har lyst til at når scriptet blir lastet ned så kjører den seg selv og
## Hva skjer når scriptet kjøres?
1. Når scriptet kjøres skal den lage en mappe med en kopi av scriptet inni seg og så kjøre kopien
2. Når de scriptet kjøres skal det også komme en popup på brukerens GUI der det står hvor mange directories som har copiert seg selv
### Bonus 
3. Få scriptet til å finne ut hvilken OS den er på og før den runner den første loopen (Hvorfor? for at navnet på alle de copierte directoriene har samme navn som en av de viktigste directoiene på OSens system. Sånn at hvis brukeren prøver å slette alle kopierte mapper med navnent til "Worm shell bash Script/ Viruset" så sletter de også en av de viktigste mappene innen OSen sinn)


## Fagbegreper
|Fagbegrep|Beskrivelse|
|--- |--- |
|Fork bomb|In computing, a fork bomb (also called rabbit virus) is a denial-of-service (DoS) attack wherein a process continually replicates itself to deplete available system resources, slowing down or crashing the system due to resource starvation. |
|Worm virus|A worm is a type of malware or malicious software that can replicate rapidly and spread across devices within a network. As it spreads, a worm consumes bandwidth, overloading infected systems and making them unreliable or unavailable. Worms can also change and delete files or introduce other malware.|
|Infinite loop|fsdk|


## Linker og resurser jeg har brukt:
* [How to Make a Batch File Copy Itself to STARTUP | Worm Tutorial Pt.1](https://youtu.be/stNJfwfwMJk?si=pEf5B6ODmQT83qnp)
* [How To: Make Linux GUI / Pop Up Boxes Using Zenity... and Some Bash](https://youtu.be/Viz0t5AWYt4?si=Gwa-wJFXBkmsH6Fv)
* [What is a Worm? - Cisco](https://www.cisco.com/c/en/us/products/security/what-is-a-worm.html)
* [Fork bomb](https://en.wikipedia.org/wiki/Fork_bomb)
* [ChatGPT](https://chatgpt.com)

# Styrker & Svakheter med koden
1. "killall bash" commandoen kan enkelt stoppe filene fra og runne etter at prossensen har startet
2. control C
3. rm -rf ~/Desktop/[0-9]* som sletter alle filene som blir lagd

#Innlegs liste: 
1. Popup = et enkelt script som lager en pop up på GUIen 


### Hva jeg kan prøve å implementere i fremtiden?
* How to use threads in bash script
* 


