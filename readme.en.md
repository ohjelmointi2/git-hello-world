# Git "Hello world"

In this exercise you learn the basics of Git version control. Before starting the exercise, make sure you have [installed the Git tool for your computer](https://git-scm.com/) and [done the required setup for Git](https://docs.github.com/en/get-started/quickstart/set-up-git). You will also need a [GitHub](https://github.com/) account<sup>1</sup> which you can create at <https://github.com/>.

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

💡 *This repository doesn't contain a Java project, but instead a single text file. It will probably look a bit different in your editor compared to "regular" projects.*


### Editing files

Open the [hello.txt](./hello.txt) file which is already inside your repository with an editor. Add the text `hello world` to the file and save it.

Use the `git status` command and inspect its output. Do you see the `hello.txt` file in the output. What does it say about the file?

### Adding changes

The `hello.txt` file is you edited locally and we want to add the latest changes of the file to the version control. This happens in two steps, which are clearly described in the document [Git add (Atlassian)](https://www.atlassian.com/git/tutorials/saving-changes).

When you run the `git status` command, it will tell you that the file has changed. Git also gives a hint of a command you can use to add the changes to the version ctonrol:

```sh
git status
git *** hello.txt    # replace the *** with the command provided by the git status command
```

We can change multiple files in a single commit, so we could keep on adding files to the same commit. This time, just having this single file is enough.


### Creating a commit

When we run the `git status` command, Git will show us which files are ready to be commited:

```sh
git status
```

```
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        modified:   hello.txt
```

Use the `git commit` command next, which will create a new commit containing the change we made:

```sh
git commit -m "Hello world added to a file"   # replace the commit message of your choice
```

💡 *In the command, the `-m` refers to check the message we use to identify this change in version control later (commit **m**essage).*


### Transfering the commits to a remote repository

After creating the commit, run the good old command:

```sh
git status
```

Now, Git tells us that the local copy of the repository is one commit ahead of the remote repository:

```
On branch master
Your branch is ahead of 'origin/master' by 1 commit.
  (use "git ****" to publish your local commits)
```

Follow the Git's instructions and run the command, which transfers the local changes to the remote repository:

```sh
git ****    # replace the **** with the command provided by the git status command
```

Finally, check the changes in GitHub. Make sure that the contents of the `hello.txt` file has been updated.

## GitHub actions and autograding

Kun olet päivittänyt ratkaisusi etärepositorioon, GitHub käynnistää automaattisesti GitHub actions -workflow:n, joka tarkastaa ratkaisusi ja antaa siitä joko hyväksytyn tai hylätyn tuloksen. Arvioinnin valmistumiseen menee tyypillisesti pari minuuttia ja sen tulos näkyy GitHub-repositoriosi [Actions-välilehdellä](../../actions/workflows/classroom.yml).

Klikkaamalla yllä olevan linkin takaa viimeisintä *"GitHub Classroom Workflow"* -suoritusta, saat tarkemmat tiedot tehtävän arvioinnista. Sivun alaosassa näkyy saamasi pisteet. Klikkaamalla "Autograding"-otsikkoa pääset katsomaan tarkemmin arvioinnissa suoritetut vaiheet ja niiden tulokset. Kuvitetun ohjeen aiheesta löydät GitHubin dokumentista [View autograding results (github.com)](https://docs.github.com/en/education/manage-coursework-with-github-classroom/learn-with-github-classroom/view-autograding-results).


## .github, .gitignore ja .gitattributes

Tämä tehtäväpohja sisältää tehtävänannon sekä muokattavan tiedoston lisäksi pisteellä alkavia "piilotiedostoja". Jos tiedostot eivät näy koodieditorisi hakemistorakenteessa, voit joutua muuttamaan editorisi asetuksia.

[`.gitignore`-tiedostossa](./.gitignore) voidaan määritellä, mitkä tiedostot jätetään [versionhallinnan ulkopuolelle](https://git-scm.com/docs/gitignore), kun taas [`.gitattributes`-tiedostossa](./.gitattributes) on määritetty kaikille tekstitiedostoille [yhtenäiset rivinvaihtomerkit](https://docs.github.com/en/get-started/getting-started-with-git/configuring-git-to-handle-line-endings). Voit muokata näitä tiedostoja tarpeidesi mukaan kurssin tehtäviä suorittaessasi.

[.github/](./.github/)-hakemisto sisältää [GitHub actions](https://github.com/features/actions) -automaatiotiedoston sekä JSON-muotoiset [GitHub classroom](https://education.github.com/) -testit, joilla ratkaisusi tarkastetaan. Sinun ei tyypillisesti tarvitse perehtyä näihin tiedostoihin tehtäviä suorittaessasi.


## Lisenssi ja tekijät

Tämän tehtävän on kehittänyt Teemu Havulinna ja se on lisensoitu [Creative Commons BY-NC-SA -lisenssillä](https://creativecommons.org/licenses/by-nc-sa/4.0/).

Tehtävän toteutuksessa on hyödynnetty ChatGPT 3.5 -kielimallia sekä GitHub copilot-tekoälyavustinta.
