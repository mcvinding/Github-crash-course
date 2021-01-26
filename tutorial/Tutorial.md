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

Look in your folder again. The file is now gone. `git rm` deletes files permanently with no warning. Too bad if you wanted to keep that file or removed it by mistake. In case you want to keep the file use the extra flag  `--chached` with `git rm`, like this:

````bash
git rm <my_file.txt> --chached
````

## 3) Revert to earlier version
Let's seee if we can restore the deleted file.

## 4) Get remote project
You do not have to start a project from scratch every time. In the next part you shall pull the scripts that is in this tutorial. The easiest way to do this is using the one-way `clone` option. Find the link for the remote repository and then clone it:

````bash
git clone <remote url>
````

This will pull the entire repository into a new folder called `Github-crash-course`. 

... which remote ...

https://github.com/git-guides/install-git.