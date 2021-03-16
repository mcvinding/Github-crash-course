# Setup guide

If this is the first time you are using Git and GitHub there are a few steps you need to do to get started before you can proceed with the [tutorials](Tutorial.md). In case you need help or have trouble getting started, please refer to the documentation below.

## Install Git
You need to have Git installed on your computer. See the install guide here https://github.com/git-guides/install-git.

When you are done downloading and installing Git, check that it works.
* On a Linux or Mac open a terminal. Type `which git`. If it returns a file path, you are good to go.
* On a Windows PC you should start **Git Bash** from the start menu. Alternatively, open any folder and right-click anywhere. You should see the open **Git Bash here**. A terminal window should appear in either case.

## Create a GitHub account

1. Go to https://github.com. 
2. Click **Sign Up**
3. Go through the setup procedure and select a username and password.
4. Done

Your username is how you will be seen by other GitHub users and used for collaborations, mentions, etc.

You can change your profile picture and info by clicking on the icon in the top right corner and select **Settings** and then **Profile**.


## Configure Git

The first time you use Git locally you need to set up the configuration. 

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

It is recommended to use SSH to connect between your local and remote folders. This allows for automatic authentication when you push to remote (otherwise, anybody could push to your account). You need to add an SSH key when you push from a new machine.

To add a new SSH key, see these guides:
1) Generate SSH key: https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
2) Add SSH key: https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account
