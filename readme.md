# Git "Hello world"

Tässä tehtävässä opit perusasioita Git-versionhallinnasta. Tehtävän edellytyksenä on, että olet asentanut Git-työkalun koneellesi ja tehnyt tarvittavat asetukset Gitin käyttämiseksi: [Set up Git (GitHub)](https://docs.github.com/en/get-started/quickstart/set-up-git). Tarvitset myös GitHub-tunnuksen, jonka voit luoda osoitteessa https://github.com/.

Tehtävänanto keskittyy Git-komentorivityökaluun, mutta voit ratkaista tehtävän myös GitHub desktopilla tai muulla graafisella työkalulla. Myös useista koodieditoreista löytyy Git-tuki, jonka avulla voit tehdä tehtävän. Kurssin ohjeistuksessa oletetaan kuitenkin, että käytät komentorivityökalua, joten joudut etsimään vastaavat toiminnot omasta työkalustasi itsenäisesti.


💡 *Jos käytät GitHubia jo valmiiksi työsi puolesta, voi olla tietoturvasyistä kannattavaa luoda erillinen tunnus opintoja varten.*

🔐 *Sinun ei tarvitse antaa omaa nimeäsi GitHub-rekisteröitymisessä. Sähköpostiosoitteena voit käyttää oppilaitoksen sähköpostia ja voit piilottaa sen muilta käyttäjiltä seuraamalla [GitHubin ohjeita](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-on-github).*

⛔ *Jos et missään tapauksessa halua käyttää GitHubia, sovi opettajasi kanssa vaihtoehtoisesta palvelusta tai tehtävän palautustavasta.*


## Tehtävä

Tässä tehtävässä tarkoituksesi on ladata Git-reposi omalle koneellesi, tehdä siihen pieni muutos, ja päivittää tekemäsi muutos etärepositorioon.

### Repositorion kloonaaminen

Aloita kloonaamalla tämä Git-repositorio omalle koneellesi. Harjoitus täytyy tehdä omassa kopiossasi, eli varmista, että repositorion osoitteessa on mukana oma GitHub-käyttäjätunnuksesi! Tarkemmat ohjeet oman kopion luomiseksi löydät oman kurssitoteutuksesi ohjeista:

```sh
git clone https://github.com/varmista-etta-github-tunnuksesi-on-repositorion-osoitteessa.git
```

Kun olet kloonannut repositorion, avaa se tiedostojärjestelmästä tai koodieditorillasi.

### Tiedoston muokkaaminen

Avaa repositoriossa valmiiksi oleva tiedosto [hello.txt](./hello.txt) koodi- tai tekstieditorilla. Lisää tiedostoon teksti `hello world` ja tallenna tiedosto.

Käytä `git status` -komentoa ja tarkastele sen tulostetta. Näkyykö `hello.txt` tulosteessa? Mitä siitä kerrotaan?


### Muutoksen lisääminen

Tekemäsi muutos `hello.txt`-tiedostoon täytyy seuraavaksi lisätä osaksi commit:ia. `git status`-komento näyttää vinkin tarvitsemastasi komennosta:

```sh
git status
git *** hello.txt    # korvaa *** `status`-komennon antamalla ohjeella
```

Yhdessä commitissa voidaan muuttaa useampia tiedostoja, jolloin voisit jatkaa tiedostojen lisäämistä samaan committiin. Suorita `git status` uudelleen. Nyt näet, että muutos on valmis "commitoitavaksi".

### "Commitin" luonti

Kun suoritat `git status`-komennon, Git näyttää, mitkä tiedostot ovat mukana commitissa:

```sh
git status
```

```
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   hello.txt
```

Käytä seuraavaksi `git commit` -komentoa luodaksesi uuden commitin:

```sh
git commit -m "Hello world lisätty tiedostoon"
```

`-m` tarkoittaa ns. "commit messagea", eli viestiä, jolla tämä muutos tunnistetaan versiohistoriassa myöhemmin.

### Commitin vienti etärepositorioon

Aja jälleen tuttu komento:

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
git ****    # korvaa **** `status`-komennosta saamallasi ohjeella
```


## .gitignore ja .gitattributes

Tämä pohja sisältää myös valmiiksi määritellyt `.gitignore`- ja `.gitattributes`-tiedostot. `.gitignore`:ssa on määritelty, mitkä tiedostot jätetään versionhallinnan ulkopuolelle, kun taas `.gitattributes`-tiedostossa on määritetty kaikille tekstitiedostoille [yhtenäiset rivinvaihtomerkit](https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings). Voit muokata näitä tiedostoja tarpeidesi mukaan.


-----

Tämän tehtävän luonnissa on hyödynnetty [GhatGPT 3.5](https://chat.openai.com/) -kielimallia.


