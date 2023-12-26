Welcome! This is the README.md file - it's a good place to start
if you're ever trying to understand an unfamiliar repository.


To get set up, follow the following. Note that all commands (things
that `look like this`) should be typed into Terminal on MacOS/Linux and 
into Git Bash on Windows (which should come with your installation). 

0. **Install Sage and Git:** If you have a Windows machine, you should follow the 
instructions given in the links for 
[Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) 
and [Sage](https://doc.sagemath.org/html/en/installation/index.html). 

If you have a MacOS machine, you should install [Homebrew](https://brew.sh/) 
and then run `brew install git` and `brew install --cask sage`, 
and Brew will handle all the messy stuff for you. 

If you have a Linux machine, you should use your system package manager
to install git and sage, just like in the Mac case.
But I guess if you have a Linux machine you probably don't need me to tell you that :) 

1. **Create a GitHub account:** You can make a free account by clicking on the 
"Sign Up" button [here](https://github.com/). 

2. **Configure your Git installation:** Your commits will be labeled by your 
name and email, so you should tell Git what those are:
```
$ git config --global user.name "<your name>"
$ git config --global user.email "<your email>"
```
To simplify things for a future step, beginners should also run
```
git config --global pull.rebase false
```

2. **Create a fork of this repository**: A **fork** is a "GitHub copy" 
of a repository that lives under your own account and that you can 
modify however you want. To create a fork, click on the "Fork"
button near the top of this page, and click "Create fork" in the ensuing
page. This will henceforth be called your **remote** repository, since it's
a copy of your project, but it doesn't live on your computer - it lives in
GitHub servers in some remote location.

3. **Create a clone of the repository on your local machine**: 
A **clone** is a local (on your machine) copy of a GitHub repository. 
To create a clone, you can type 
```$ git clone <fork-url>```
into a terminal, where fork-url is the URL of your fork on GitHub.
Henceforth, this will be called your **local** repository. 
You should navigate into the folder that was just created with
```$ cd lbd-sato-tate```

4. **Start making changes:** A good guide for these next few steps is
(here)[https://rogerdudler.github.io/git-guide/]. 

To get a sense for what's happening in the following, first run
```
$ git status
```
You should see something like this.
```
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
    <changed files>
```
If these look like the changes you expected, you can run
```
$ git add .
```
to add your changes to the **staging area**. Files in the staging area
are "ready to commit". Run `$ git status` again to see how things have changed.
It should look something like this.
```
$ git status
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   README.md
```

5. **Commit your changes:** You can commit your changes with the command
```
$ git commit -m <commit message>
```
The `-m` flag indicates that you are also providing a short 
and descriptive name for what the commit does. If you run
```$ git status``` now, you will notice that it is empty again!
This is because the staged changes have been moved to a commit, 
and your working directory is now clean (with respect to the
latest commit). 

5. **See the changes you've made so far:** Run 
```$ git log``` to see your existing commits.
You will notice that `(origin/main)` and `(HEAD -> main)`,
which used to be together, are now separated. For example,

```
commit 9668dabe372eb977da54aac36e44f0fc1e98cec1 (HEAD -> main)
Author: Abhijit S Mudigonda <abhijit.mudigonda@gmail.com>
Date:   Tue Dec 26 10:10:32 2023 -0600

    add README

commit a5601591d88028097b01a01be6050c62175dfb85 (origin/main)
Author: Abhijit S Mudigonda <abhijit.mudigonda@gmail.com>
Date:   Tue Dec 26 02:36:16 2023 -0600

    gitignore .png and .sage.py
```

This is telling you that the `HEAD` of your local repository is
one commit ahead of `origin/main`, which is the top of your remote
repository (your fork on GitHub). 

You can generally make the output of `git log` more descriptive
with ```$ git log --graph --decorate```

6. **Push your local changes to your remote repository** Run
```$ git push```
to push your commit to your fork on GitHub.

5. **Incorporate changes to the upstream repository onto your remote:**
The **upstream repository** is the original repository from which your 
remote repository was forked. On the GitHub page for your fork, if you see something like
"This branch is 4 commits behind abhijitm-mudigonda/lbd-sato-tate:main" (meaning that
the upstream repository has 4 commits that you do not),
you can click the "Sync Fork" button to catch your remote repository up with 
the upstream repository. 

6. **Incorporate changes to your remote onto your local repository:**
Running 
```$ git pull```
will pull changes to your remote repo down to your local repository. 
After you've done so, run
```$ git log --graph --decorate```
This probably looks kind of confusing! Git has created a **merge commit**
which resolves changes between the remote repository and your local repository.
Normally, a commit will have just one parent, but a merge commit will have two,
one for each branch it's reconciling. 

7. **Incorporate changes from your remote repository into the upstream repository:**
Say that you've done the above steps a few times, and have `push`ed a bunch of 
shiny new changes to your remote repository which you now want to introduce to
the upstream repository. In practice, this is when your changes 
go out to the world and to your collaborators. The basic process is
to create a **pull request** between your remote and the upstream. 





