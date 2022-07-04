

You've set up your Vagrant Virtual Machine which serves as your development box. It comes with git installed but you still need to set it up with your GitHub credentials so that you can push to your repositories on GitHub. That's all we're going to do here.

Follow the steps below, running the commands within an active Vagrant SSH session (recall that you'll know you're in vagrant because the command line prompt will look like this: `vagrant [vagrant]>`).


## Configure GitHub on Vagrant


> #### Instruction 
> Run the following command, making sure to use the email address associated with your GitHub account.

```terminal
git config --global user.email 'your@email.com'
```

**Note:** If you mistype something, you can run this command again (use the up/down arrow keys in Terminal to cycle through your command history).


> #### Instruction
> Run the following command, making sure to use the **full name** associated with your GitHub account.

```terminal
git config --global user.name 'Your Name'
```

> #### Note
> This is a good time to double check that you've got your name and other information [updated in GitHub](https://github.com/settings/profile)


## SSH Keys

SSH keys are a way to identify trusted computers without involving passwords. The steps below will walk you through generating an SSH key and then adding the public key to your GitHub account.

> #### Instruction
> In your terminal, connected to your vagrant box, type the following commands:

```terminal
cd ~/.ssh
```
```terminal
ls -al
```

Check the directory listing to see if you have files named either `id_rsa.pub` or `id_dsa.pub`. If you don't have either of those files, follow the steps in **Configuring a New Key** below. Otherwise, skip to ahead to **Add Your Public Key to GitHub** below.

### Configuring a New Key

> #### Instruction
> To generate a new SSH key, copy and paste the commands below, making sure to substitute in your email. The default settings are preferred, so when you're asked to "enter a file in which to save the key" just press enter to continue.

```terminal
eval `ssh-agent -s`
```

```terminal
ssh-keygen -t rsa -C "your_email@example.com"
```

You should see something like the following.

```commandline
Generating public/private rsa key pair.
Enter file in which to save the key (/home/vagrant/.ssh/id_rsa): [Press enter]
```

Next, you'll be asked to enter a passphrase. Leave it blank (just hit enter without typing any other characters), as demonstrated below.

```commandline
Enter passphrase (empty for no passphrase): [Press enter]
Enter same passphrase again: [Press enter]
```

Which should give you something like the following.

```commandline
Your identification has been saved in /Users/you/.ssh/id_rsa.
Your public key has been saved in /Users/you/.ssh/id_rsa.pub.
The key fingerprint is:
01:0f:f4:3b:ca:85:d6:17:a1:7d:f0:68:9d:f0:a2:db your_email@example.com
```

> #### Instruction
> Add your new key to the ssh-agent using the following command:

```terminal
ssh-add ~/.ssh/id_rsa
```

### Adding Your Public Key to GitHub

> #### Instruction
> From your Vagrant machine, type the following command:

```terminal
cat ~/.ssh/id_rsa.pub
```

This will give you a big block of characters which you should highlight and copy from your terminal window.

> #### Instruction
> In your browser, visit the [Account Settings](https://github.com/settings/admin) screen on GitHub and follow the steps below.

* Click on **SSH Keys** on the left sidebar.
* Click **Add SSH Key**.
* In the Title field, add a descriptive label for the new key. For example, since you're using a Vagrant box for Lighthouse, you might call this key "Lighthouse Vagrant Box".
* Paste your key into the "Key" field.
* Click **Add key**.
* Confirm the action by entering your GitHub password.

> #### Note
> It's okay to have multiple SSH keys configured in your GitHub settings. It just means multiple machines have access to pull and push to GitHub using your account credentials.

