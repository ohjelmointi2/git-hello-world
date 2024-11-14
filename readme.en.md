# Git "Hello world"

In this exercise you learn the basics of Git version control. Before starting the exercise, make sure you have [installed the Git tool for your computer](https://git-scm.com/) and [done the required setup for Git]((https://docs.github.com/en/get-started/quickstart/set-up-git). You will also need a [GitHub](https://github.com/) account<sup>1</sup> which you can create at <https://github.com/>.

<sup>1</sup> <em>If you already use GitHub at work, it might be a good idea (e.g. due to security reasons) to create a separate account for studies.</em>

🔐 *You don't have to give your name while registering your account in GitHub. You can use the school's email and you can hide it from other users by following the [GitHub's instructions](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-on-github).*

<!--
⛔ *If you absolutely do not want to use GitHub in the course, discuss with your teacher about a possible alternative git service or method for submitting assignments.*
-->

## Git command-line tool

The exercise description focuses on the Git command-line tool. Regarding the command-line itself, it is assumed that you are familiar with the [basics](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Command_line). The basic knowledge includes e.g. opening the command-line window, and switching between different directories. If command-line causes problems, you can also solve this and the next exercises using a graphical user interface, such as VS code or GitHub desktop.


* [Command line crash course (developer.mozilla.org)](https://developer.mozilla.org/en-US/docs/Learn/Tools_and_testing/Understanding_client-side_tools/Command_line)
* [Using Git source control in VS Code (code.visualstudio.com)](https://code.visualstudio.com/docs/sourcecontrol/overview)
* [GitHub Desktop (desktop.github.com)](https://desktop.github.com/)

💡 *The course instructions assume that you will use a command-line tool, so you will need to independently find the corresponding functions in your own tool.*

## Git basics

Git is a very versatile tool, and there are a huge number of different guides and tutorials available for using it. The perspective and content of the tutorials vary quite a bit even for the basics of Git: some create their own repository, while others clone an existing repository. Some create and merge branches, while others work only in a single branch.

In this exercise you'll only need the `clone`, `add`, `commit` and `push` command. You can skip all more advanced topics, such as those related to branches, at least for now. For completing this task, we recommend the following sources::

* [What is version control? (Atlassian)](https://www.atlassian.com/git/tutorials/what-is-version-control). Also, check the [video](https://youtu.be/xQujH0ElTUg).
* [What is Git (Atlassian)](https://www.atlassian.com/git/tutorials/what-is-git)
* [Install Git (Atlassian)](https://www.atlassian.com/git/tutorials/install-git)
* [Git add (Atlassian)](https://www.atlassian.com/git/tutorials/saving-changes)
* [Git Cheat Sheet, pdf (GitHub)](https://education.github.com/git-cheat-sheet-education.pdf)


## Exercise

In this task, your goal is to download this Git repository to your computer, make a small change to it, and update your change back to the remote repository.

### Cloning a repository

Start by cloning this Git repository to your computer. The exercise must be done in your own copy, so make sure that your GitHub username is included in the repository address! You can create your own copy through the GitHub Classroom link provided in your course assignment.

```sh
git clone https://github.com/make-sure-that-your-account-is-in-the-address.git
```

Once you have cloned the repository to your computer in your chosen directory, open the cloned directory with your code editor.

💡 *Git _clones_ the repository into a directory which name is by default the same as the name of the repository. The commands in the upcoming sections must be ran inside the direcotry. So, [switch to the cloned directory using the command-line](https://en.wikipedia.org/wiki/Cd_(command)).*

💡 *Tämä repositorio ei sisällä Java-projektia vaan pelkän yksittäisen tekstitiedoston. Se näyttää siis editorissasi mahdollisesti hieman erilaiselta kuin "tavalliset" projektit.*


### Tiedoston muokkaaminen

Avaa repositoriossa valmiiksi oleva tiedosto [hello.txt](./hello.txt) koodieditorillasi. Lisää tiedostoon teksti `hello world` ja tallenna tiedosto.

Käytä `git status` -komentoa ja tarkastele sen tulostetta. Näkyykö `hello.txt` tulosteessa? Mitä siitä kerrotaan?


### Muutoksen lisääminen

`hello.txt`-tiedostoa on nyt muokattu paikallisesti ja seuraavaksi tiedoston viimeisin sisältö halutaan lisätä myös versionhallintaan. Lisääminen tapahtuu kahdessa vaiheessa, jotka on kuvattu selkeästi dokumentissa [Git add (Atlassian)](https://www.atlassian.com/git/tutorials/saving-changes).

Kun suoritat `git status`-komennon, se kertoo, että tiedosto on muuttunut. Git myös näyttää vinkin komennosta, jolla saat lisättyä muutoksen versionhallintaan:

```sh
git status
git *** hello.txt    # korvaa *** status-komennon antamalla komennolla
```

Yhdessä commitissa voidaan muuttaa useampia tiedostoja, joten voisit jatkaa tiedostojen lisäämistä samaan committiin. Tällä kertaa meille riittää tämä yksi tiedosto.


### "Commitin" luonti

Kun suoritat `git status`-komennon, Git näyttää, mitkä tiedostot ovat valmiina commitoitavaksi:

```sh
git status
```

```
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   hello.txt
```

Käytä seuraavaksi `git commit` -komentoa, joka luo uuden commitin, jossa lisäämäsi muutos on mukana:

```sh
git commit -m "Hello world lisätty tiedostoon"   # korvaa viesti vapaasti valitsemallasi tekstillä
```

💡 *Komennossa `-m` tarkoittaa viestiä, jolla tämä muutos tunnistetaan versiohistoriassa myöhemmin (commit **m**essage).*


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

Kun olet päivittänyt ratkaisusi etärepositorioon, GitHub käynnistää automaattisesti GitHub actions -workflow:n, joka tarkastaa ratkaisusi ja antaa siitä joko hyväksytyn tai hylätyn tuloksen. Arvioinnin valmistumiseen menee tyypillisesti pari minuuttia ja sen tulos näkyy GitHub-repositoriosi [Actions-välilehdellä](../../actions/workflows/classroom.yml).

Klikkaamalla yllä olevan linkin takaa viimeisintä *"GitHub Classroom Workflow"* -suoritusta, saat tarkemmat tiedot tehtävän arvioinnista. Sivun alaosassa näkyy saamasi pisteet. Klikkaamalla "Autograding"-otsikkoa pääset katsomaan tarkemmin arvioinnissa suoritetut vaiheet ja niiden tulokset. Kuvitetun ohjeen aiheesta löydät GitHubin dokumentista [View autograding results (github.com)](https://docs.github.com/en/education/manage-coursework-with-github-classroom/learn-with-github-classroom/view-autograding-results).


## .github, .gitignore ja .gitattributes

Tämä tehtäväpohja sisältää tehtävänannon sekä muokattavan tiedoston lisäksi pisteellä alkavia "piilotiedostoja". Jos tiedostot eivät näy koodieditorisi hakemistorakenteessa, voit joutua muuttamaan editorisi asetuksia.

[`.gitignore`-tiedostossa](./.gitignore) voidaan määritellä, mitkä tiedostot jätetään [versionhallinnan ulkopuolelle](https://git-scm.com/docs/gitignore), kun taas [`.gitattributes`-tiedostossa](./.gitattributes) on määritetty kaikille tekstitiedostoille [yhtenäiset rivinvaihtomerkit](https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings). Voit muokata näitä tiedostoja tarpeidesi mukaan kurssin tehtäviä suorittaessasi.

[.github/](./.github/)-hakemisto sisältää [GitHub actions](https://github.com/features/actions) -automaatiotiedoston sekä JSON-muotoiset [GitHub classroom](https://education.github.com/) -testit, joilla ratkaisusi tarkastetaan. Sinun ei tyypillisesti tarvitse perehtyä näihin tiedostoihin tehtäviä suorittaessasi.


## Lisenssi ja tekijät

Tämän tehtävän on kehittänyt Teemu Havulinna ja se on lisensoitu [Creative Commons BY-NC-SA -lisenssillä](https://creativecommons.org/licenses/by-nc-sa/4.0/).

Tehtävän toteutuksessa on hyödynnetty ChatGPT 3.5 -kielimallia sekä GitHub copilot-tekoälyavustinta.
