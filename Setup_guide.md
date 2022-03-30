# Setup guide

If this is the first time you are using Git and GitHub there are a few steps you need to do to get started before you can proceed with the [tutorials](Tutorial.md):

1. [Install Git](https://github.com/mcvinding/Github-crash-course/edit/main/Setup_guide.md#install-git)
2. [Create GitHub account](https://github.com/mcvinding/Github-crash-course/edit/main/Setup_guide.md#create-a-github-account)
3. [Configure Git on your local computer](https://github.com/mcvinding/Github-crash-course/edit/main/Setup_guide.md#configure-git)
4. [Add SSH key](https://github.com/mcvinding/Github-crash-course/edit/main/Setup_guide.md#add-ssh-key) 

In case you need help or have trouble getting started, please refer to the documentation below.

## Install Git
You need to have Git installed on your computer. Git comes pre-installed on most Linux and Mac systems. If you are unsure if you have Git installed, open a terminal and type `which git`. If it returns a file path, you already have Git.

See the install guide here https://github.com/git-guides/install-git.

When you are done downloading and installing Git, check that it works.
* On a Linux or Mac open a terminal. Type `which git`. If it returns a file path, you are good to go.
* On a Windows PC you should start **Git Bash** from the start menu. Alternatively, open any folder and right-click anywhere. You should see the open **Git Bash here**. A terminal window should appear in either case.

## Create a GitHub account

GitHub is an online platform for managing Git repositories. Note that there are alternative platforms to gitHub, but this course focus on GitHub. It is free to create a GitHub account, which will give you a certain amount of storage space. there is also options to have a paid account which does provide more features and storage space, but for most academic application (at least the ones this course is aimed at) the free account plan is more than enough.

To create a GitHub account:

1. Go to https://github.com. 
2. Click **Sign Up**
3. Go through the setup procedure and select a username and password.
4. Done

Your username is how you will be seen by other GitHub users and used for collaborations, mentions, etc., so pick a good username.

You can change your profile picture and info by clicking on the icon in the top right corner and select **Settings** and then **Profile**.


## Configure Git

The first time you use Git locally you need to set up the local configuration. 

See this guide on how to do the setup: https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup

Most important that you set the correct username and email that you used to create your GitHub account:

```bash
$ git config --global user.name <username>
$ git config --global user.email <email>
```

If in doubt, then you can list all current configurations like this

```bash
$ git config -l
```

## Add SSH key

To synchronize between your local Git and the remote GitHub projects you need to setup an SSH conection and authentification. To do this, you need to create a SSH authentification key on your local computer and add it to your GitHub account. This allows for automatic authentication when you push to remote (otherwise, anybody could push to your account). You will have to do this every time you setup your Git project on a new local computer to push from a new machine.

To add a new SSH key, follow these guides:
1) Generate SSH key: https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
2) Add SSH key: https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account

When the SSH key is in place, it should appear on the menu **SSH and GPG keys** in your GitHub account settings.

If you completed all four steps, you are ready to use Git and Github.
