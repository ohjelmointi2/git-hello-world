> [!NOTE]
> The English translation for this exercise can be found in [this file](./readme.en.md).

# Git "Hello world"

Tässä tehtävässä opit perusasioita Git-versionhallinnasta. Tehtävän edellytyksenä on, että olet [asentanut Git-työkalun koneellesi (git-scm.com)](https://git-scm.com/) ja tehnyt [tarvittavat asetukset Gitin käyttämiseksi (GitHub)](https://docs.github.com/en/get-started/quickstart/set-up-git). Vaihtoehtoisesti voit käyttää myös pilvipohjaisia kehitysympäristöjä, kuten [GitHub Codespaces](https://github.com/features/codespaces), jossa VS Code, Git ja Java ovat valmiiksi asennettuina.


## Git-komentorivityökalu

Tehtävänanto keskittyy Git-komentorivityökaluun. Itse komentorivin osalta oletamme [komentorivin peruskäytön](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Command_line) olevan ennalta tuttua. Peruskäytöksi laskemme mm. komentorivin avaamisen ja eri hakemistojen välillä siirtymisen. Mikäli komentorivi aiheuttaa ongelmia, voit ratkaista tämän ja seuraavat tehtävät myös graafisella työkalulla, kuten [VS Code](https://code.visualstudio.com/docs/sourcecontrol/overview) tai [GitHub desktop](https://desktop.github.com/).

* [Command line crash course (developer.mozilla.org)](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Command_line)
* [Using Git source control in VS Code (code.visualstudio.com)](https://code.visualstudio.com/docs/sourcecontrol/overview)
* [GitHub Desktop (desktop.github.com)](https://desktop.github.com/)

💡 *Kurssin ohjeistuksessa oletetaan, että käytät komentorivityökalua, joten joudut etsimään vastaavat toiminnot omasta työkalustasi itsenäisesti.*


## Gitin perusteet

Git on erittäin monipuolinen työkalu ja sen käyttämiseksi löytyy valtava määrä erilaisia ohjeita ja tutoriaaleja. Tutoriaalien näkökulma ja sisältö vaihtelee melko suuresti jo Gitin perusteiden osalta: osassa luodaan itse oma repositorio, osassa kloonataan valmis repositorio. Osassa luodaan ja yhdistellään kehityshaaroja, kun taas toisissa työskennellään vain yhdessä kehityshaarassa.

Tässä tehtävässä tarvitset vain Gitin komentoja `clone`, `add`, `commit` ja `push`. Kaikki syventävämmät aiheet, esimerkiksi kehityshaaroihin (branch) liittyen, voit jättää ainakin toistaiseksi väliin. Tämän tehtävän suorittamiseksi suosittelemme mm. seuraavia lähteitä:

* [What is version control? (Atlassian)](https://www.atlassian.com/git/tutorials/what-is-version-control). Katso myös [video](https://youtu.be/xQujH0ElTUg).
* [What is Git (Atlassian)](https://www.atlassian.com/git/tutorials/what-is-git)
* [Install Git (Atlassian)](https://www.atlassian.com/git/tutorials/install-git)
* [Git add (Atlassian)](https://www.atlassian.com/git/tutorials/saving-changes)
* [Git Cheat Sheet, pdf (GitHub)](https://education.github.com/git-cheat-sheet-education.pdf)


## Tehtävä

Tässä tehtävässä tarkoituksesi on ladata tämä Git-repositorio omalle koneellesi, tehdä siihen pieni muutos, ja päivittää tekemäsi muutos takaisin etärepositorioon.


### Repositorion kloonaaminen

Aloita kloonaamalla tämä Git-repositorio omalle koneellesi. Harjoitus täytyy tehdä omassa kopiossasi, eli varmista, että repositorion osoitteessa on mukana oma GitHub-käyttäjätunnuksesi!

```sh
git clone https://github.com/varmista-etta-github-tunnuksesi-on-repositorion-osoitteessa.git
```

Kun olet kloonannut repositorion tietokoneellesi valitsemaasi hakemistoon, avaa kloonattu hakemisto koodieditorillasi.

💡 *Git _kloonaa_ repositorion alihakemistoon, jonka nimi on oletuksena sama kuin repositorion nimi. Seuraavien vaiheiden komennot syötetään repositorion hakemiston sisällä. [Siirry siis kloonattuun hakemistoon komentorivilläsi](https://en.wikipedia.org/wiki/Cd_(command)).*

💡 *Tämä repositorio ei sisällä Java-projektia vaan pelkän yksittäisen tekstitiedoston. Se näyttää siis editorissasi mahdollisesti hieman erilaiselta kuin "tavalliset" projektit.*


### Tiedoston muokkaaminen

Avaa repositoriossa valmiiksi oleva tiedosto [hello.txt](./hello.txt) koodieditorillasi. Lisää tiedostoon teksti `hello world` ja tallenna tiedosto.

Käytä `git status` -komentoa ja tarkastele sen tulostetta. Näkyykö `hello.txt` tulosteessa? Mitä siitä kerrotaan?


### Muutoksen lisääminen

`hello.txt`-tiedostoa on nyt muokattu paikallisesti ja seuraavaksi tiedoston viimeisin sisältö halutaan lisätä myös versionhallintaan. Lisääminen tapahtuu kahdessa vaiheessa, jotka on kuvattu selkeästi dokumentissa [Git add (Atlassian)](https://www.atlassian.com/git/tutorials/saving-changes).

Kun suoritat `git status`-komennon, se kertoo, että tiedosto on muuttunut. Git myös näyttää vinkin komennosta, jolla saat lisättyä muutoksen versionhallintaan:

```sh
git status
git *** hello.txt    # korvaa *** oikealla komennolla
```

Yhdessä commitissa voidaan muuttaa useampia tiedostoja, joten voisit jatkaa tiedostojen lisäämistä samaan committiin. Tällä kertaa meille riittää tämä yksi tiedosto.


### "Commitin" luonti

Kun suoritat `git status`-komennon, Git näyttää, mitkä tiedostot ovat valmiina commitoitavaksi:

```sh
$ git status

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   hello.txt
```

Käytä seuraavaksi `git commit` -komentoa, joka luo uuden commitin, jossa lisäämäsi muutos on mukana:

```sh
git commit -m "Hello world lisätty tiedostoon"   # korvaa viesti vapaasti valitsemallasi tekstillä
```

Komennossa `-m` tarkoittaa viestiä, jolla tämä muutos tunnistetaan versiohistoriassa myöhemmin (commit message).


### Commitin vienti etärepositorioon

Aja commitin luonnin jälkeen taas tuttu komento:

```sh
git status
```

Nyt Git kertoo, että paikallinen kopiosi repositoriosta on yhden commitin edellä etärepositoriota:

```
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git ****" to publish your local commits)
```

Noudata Gitin antamaa ohjetta ja anna komento, jolla julkaiset paikalliset muutoksesi etärepositorioon:

```sh
git ****    # korvaa **** edellisestä komennosta saamallasi komennolla
```

Käy lopuksi tarkastamassa etärepositoriosi sisältö. Varmista, että `hello.txt` on päivittynyt.


## GitHub actions ja autograding

Kun olet vienyt ratkaisusi GitHubiin, GitHub käynnistää automaattisesti GitHub actions -workflow:n, joka tarkastaa ratkaisusi ja antaa siitä joko hyväksytyn tai hylätyn tuloksen. Arvioinnin valmistumiseen menee tyypillisesti pari minuuttia ja sen tulos näkyy GitHub-repositoriosi actions-välilehdellä:

![autograde-step-1](https://github.com/user-attachments/assets/f8c10b84-9b84-4d9d-9275-0ef4f38434a0)

Klikkaamalla viimeisintä workflow-suoritusta saat tarkempaa tietoa tehtävän arvioinnista:

![autograde-step-2](https://github.com/user-attachments/assets/1d594537-a45e-4c41-a8c4-65e514439788)

Sivun alareunassa näet pisteesi. Klikkaamalla "Autograding"-otsikkoa näet tarkempia tietoja arvioinnissa suoritetuista vaiheista ja niiden tuloksista:

![autograde-step-3](https://github.com/user-attachments/assets/c44c7c42-4a30-40b9-ac52-eb375c4b0a34)


## .github, .gitignore, .gitattributes ja .grading

Tämä tehtäväpohja sisältää tehtävänannon sekä muokattavan tiedoston lisäksi pisteellä alkavia "piilotiedostoja". Jos tiedostot eivät näy koodieditorisi hakemistorakenteessa, voit joutua muuttamaan editorisi asetuksia, mikäli haluat tutustua näihin tiedostoihin.

[`.gitignore`-tiedostossa](./.gitignore) voidaan määritellä, mitkä tiedostot jätetään [versionhallinnan ulkopuolelle](https://git-scm.com/docs/gitignore), kun taas [`.gitattributes`-tiedostossa](./.gitattributes) on määritetty kaikille tekstitiedostoille [yhtenäiset rivinvaihtomerkit](https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings). Voit muokata näitä tiedostoja tarpeidesi mukaan kurssin tehtäviä suorittaessasi.

[.github/](./.github/)-hakemisto sisältää [GitHub actions](https://github.com/features/actions) -automaatiotiedoston ja [.grading/](./.grading/)-hakemisto sisältää JSON-muotoiset testit, joilla ratkaisusi tarkastetaan. Sinun ei tyypillisesti tarvitse perehtyä näihin tiedostoihin tehtäviä suorittaessasi.


## Lisenssi ja tekijät

Tämän tehtävän on kehittänyt Teemu Havulinna ja se on lisensoitu [Creative Commons BY-NC-SA -lisenssillä](https://creativecommons.org/licenses/by-nc-sa/4.0/).

Tehtävän toteutuksessa on hyödynnetty ChatGPT 3.5 -kielimallia sekä GitHub copilot-tekoälyavustinta.
