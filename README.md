# Page_Rank
Am implementat prima cerinta prin a incepe cu initierea matricilor si vectorilor pe care urma sa-I utilizez. Am citit din fisier numar de elemente, iar apoi fiecare linie din fisier si am adaugat in matrice 1 pe  pozitile in care se afla un arc de la numarul liniei catre numarul coloanei. In acelasi timp am salvat intr-un vector si numarul de siteuri la care are acces direct siteul respectiv. Am pus apoi 0 pe toata diagonal principal si am scazut din L linkurile de la fiecare pagina catre sine. Am calculate matricea M, cu relevanta fiecarei pagini, iar apoi am calculat PR cat timp diferenta era mai mica decat eroarea. Apoi o variabila ne scotea din program.
Am implementat a-doua cerinta incepand exact ca la prima, cu exceptia calculului final al lui PR, deoarece am utilizat algoritmul Gram-Schmidt pentru calculul matricei inverse cu ajutorul lui Q si R care au fost calculate in functia inversa.
Pentru cea de a treia cerinta am deschis fisierele necesare citirii si afisarii datelor. Am apelat cele doua functii create anterior si am afisat numarul de siteuri si cei doi vectori in formatul cerut. Apoi am salvat indicia siteurilor in ordinea intiala pentru a-i putea interschimba odata cu interschimbul valorilor din R2. Am citit toate valorile din fisier pemtru a putea salva ultimele doua valori care erau relevante pentru ultima functie. Am folosit un algoritm de interschimbare pentru a sorta vectorul PR obtinut in urma celei de a-doua cerinta si vectorul cu indicia siteurilor ca sa corespunda pozitiei lor din PR. La afisare am afisat elementele celor trei vectori, fiecare pe cate o coloana.
