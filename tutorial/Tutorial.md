# Using Git/Github in Scientific Collaborations tutorial
In this tutorial you will use Git and Github to setup your own GitHub repository, add and remove files, and clone a remote repository (the one you are in right now) and synchronize it to your own account. Finally you can try to add each other as collaborators. 

If this is the first time you use Git it is a good idea to check that you have done the configuration. See the [setup guide](Setup_guide.md)

Note that code in `< >` brackets should be replaced with the text that apply you without the brackets. Everything else is copy/pate friendly.

## 1) Setup a repository
For the very first excersice you shall create a new repository with Github, initialize a local folder, setup the remote link between the Github folder and the local folder, and finally pull the remote folder.

*Step 1*: Go to your GitHub page. Click **Repositories** and then click the green **New** button. This will take you to the repository creation page. The repository that you are about to create will only be used for this tutorial (unless you want to keep using it for something else, that is up to you) so it does not matter what you call it. As a general tip, try to keep the titles short and informative. I suggest that you call it `Github-crash-course`.

You then have the option to write a short description for the repository. This text is only for show on your GitHub page. It is nice to add one or two senctences that describe what this reppository is for.

Then you have to select privancy settings for the repository. Your options are:
* **Public:** the repository is visible to anyone on the internet.
* **Private:** only you and any collaborator that you add to the project can see the content of the repository.

You can always change the privacy setting for the repository later in the settings menu once you are done with it's creation.

You then have the options to create the repository with some files already present. **README.md** will create the README file that is shown at the front page. **.gitignore** is a text file in which you can specify files in your folder that should not be tracked by Git once your start commiting files. **Licence** lets you choose from among different open source licences. You can choose which you want, but you can also add these later.

For not create the repository with only a README file.

[image]

Spend a few minutes to click areound on the different menus in your newly created repository to what you can do. See if you can find the place where you add collaborators?

*Step 2*: Initialise the local folder: go to the file path where you want the project to be saved on your local computer. Create a folder for the tutorial; call it e.g., `Github-crash-course`. Make sure that you alway have a folder dedicated to your new project. Do not initialise git directly in your `home` directory.

Open the new folder in a terminal. On Windons you can open the folder, right click anywhere, and open **Git Bash here**. A terminal window will appear. Type

````bash
git init
````

The folder is not declared a git folder.

*Step 3*: Next, you should setup the remote. Find the link for the repository on the Github page. Copy the link address. Then back in the terminal you write

````bash
git remote add origin <the link>
````

You can check which remotes you have setup for the repository with this command:

````bash
git remote -v
````

*Step 4*: With the remote setup, the last step is just to pull the remote files.

````bash
git pull origin master
````

You should now see the README file in your local repository.

> *Tip*: you can also run `git init` in folders that already have files in it, e.g. if you have a project you are working on that you want to upload to GitHub. The procedure is the same. You can then add the existing files as you shall see in the next step.

## 2) Synchronize files
With the project setup you are ready to work on your scripts in the folder. Working on your code is no different than before; git has no impact on this. In case you are working on a project on different computers or if you are working in collaboration, it is always good idea to start by pulling the latets changes as you did above with `git pull`. In case you are working on the project alone, you will know best yourself when and where you made the latest changes (unless you are like me and forget). Then do your work on the scripts. when you are done, you *stage* the files you want to *commit*.

Make a new text document in the project folder. Add some text to the document. If you do not know what to write, list your to ten favorite animals.

> *Tip*: terminal based programs, including git, can have trouble dealing with files that has balank spaces in the filename. Use dashes or underscres intead. Instead of `My File.txt` call it `myFile.txt` or `My_File.txt`.
>
> Also note that *EVERYHING* is case sensitive.

*Step 1:* Add your changes to the stage. Adding or removing files to stage does not change the files or upload them right away. you can freely add and remove files at this point. It is not until you commit that the changes are made. Remember that the stage is like a box where you can put and take as many items in and out as you want. But when you commit, you seal the box and send it by post.

Add the file to the stage:

````bash
git add <my_file.txt>
````

Check status of the stage, to see what is changed since last commit:

````bash
git status
````
You should see the the filename in green under *changes to be committed*.

Next, edit the README file, e.g. descibe what you wrote in the text file (ten favorite animals). Check status again. You should see the the filename of the README file is in red under *Changes not staged for commit*. These are files that are tracked by Git and have been changed, but not staged yet. You can stage all changes with `git add -u` (for add all *U*nstaged changes).

Any files and folders in white in the bottom are not tracked by git and it will not know if they are changed or not. you first need to add them with `git add <filename>`

*Step 2*: Commit the changes. Check the status. If the files and changes in the staging area is like tyou want them you are ready to commit. Remeber to write a useful commit messeage after the flag `-m` (for message). Begin and end with `" "`. In case you do not specify the `-m` flag, it will open the default terminal text editor (in most cases Vim) to gently remind you to write the commit message! Easier to use the flag.

````bash
git commit -m "list of ten favorite animals"
````

*Step 3*. Now push the commit to the remote:

````bash
git push origin main
````

Go to the repository on your GitHub page (refresh if you already have it open). You should now see your new folder. If you do then congratulations´, you know know how to push/pull files.

Now try to remove the file you just created. Go back to the terminal. Use `git rm` to remove files:

````bash
git rm <my_file.txt>
````

Look in your folder again. The file is now gone. `git rm` deletes files permanently with no warning. Too bad if you wanted to keep that file or removed it by mistake. In case you want to keep the file use the extra flag `--chached` with `git rm`, like this:

````bash
git rm <my_file.txt> --chached
````

This would have been useful to know before you were told to delete the file! Now, do you dare to add all changes (`git add -u`) and commit the changes before you go to the next step?


## 3) Revert to earlier version
Let's see if we can restore the deleted file? Since you have not commited the changes yet, you can go back to the latest commit

````bash
$ git reset --hard HEAD
````

Did this restore the deleted file? If you commited the changes after deleting the file, it will be part of the latest commit. In that case you must find a previous commit to revert to. First, you must find the commit id number of the commit. Use `git log` to get a list of all commits. You will see that each commit has a long gibberish number like this: `9fb4a...`. Copy the number of the commit you want to return to and use it like this:

````bash
$ git reset <the long number>
````

## 4) Branches
So far you have only been working on one branch. Let's say that you want to implement a new analysis step, but you do not yet want it to be part of the code you present on your GitHub account. A solution is to create a new branch. You can see your current branches with `git branch -a`. The main function for managing branches is `git checkout`. 
Create a new branch by adding the flag `-b` (for new *b*ranch) like this:

````bash
git checkout -b <branch name>
````
Keep the branch name short, informative, and without blank spaced; e.g. `butfix` or `new-prepoc` depending om your reason for the new branch.

You can switch between braches with `git checkout` without the `-b` flag.

````bash
git checkout <branch name>
````

If you get lost, use git `git branch -a` to see your branches with the one you are currently on highlighted. The output from `git status` also specify as the very first line which branch you are currently at and what changes yoyu have stages in that branch.

Make it a practice to always check which branch you are in when you begin your work.

**Merging a branch**

Now switch back to the new branch.

## 5) Get remote project
You do not have to start a project from scratch every time. In the next part you shall pull the scripts that is in this tutorial. The easiest way to do this is using the one-way `clone` option. Find the link for the remote repository and then clone it. This will pull the entire repository into a new folder called `Github-crash-course`.

````bash
git clone <remote url>
````

This is how you (usually) would get open source toolboxes. You can then keep the toolbox up to date by pulling the recent updates from the developers hwnever they push the latest changes. You can, however, not push your changes directly back unless they make you a collaborator. What you can do is to make your own "fork" of the repository. Let's look at two ways to do this.

*Option 1*: Clone the remote folder. Then change the remote `origin` to the address for your GitHub repository:

````bash
git remote set-url origin <the link>
````
Use `git remote -v` to see the location of before and after you redefine `origin`. This option might lead to errors if you already have local changes.

*Option 2*: have multiple remotes. You can have multiple remotes beside `origin`. `origin` is not a Git function but the name we gave the remote when we defined it with `git remote add` (however, naming your main remote `origin` is the  convention you will see all over GitHub, so use the this name to make things easier for yourself and everybody else).

In the tutoiral folder you created in the beginning, you specified `origin` as the GitHub repository on your account. Now add a new remote that point to this tutorial repository. As when you cloned the tutorial repository, find and copy the url. Then add this as a new remote in your terminal. By convention, we call this `upstream`.

````bash
git remote add upstream <the link>
````

See the remotes with `git remote -v`. Get the files from the remote to your local folder and merge them into your fork.

````bash
git fetch upstream main
git merge upstream/main
````





... which remote ...

https://github.com/git-guides/install-git.