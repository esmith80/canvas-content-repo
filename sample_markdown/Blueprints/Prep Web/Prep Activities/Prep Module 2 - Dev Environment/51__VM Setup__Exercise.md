---
uuid: f252cd05-4b9d-4a70-89d4-40f5dcc2d553
name: 'Setup Your VM'
type: 'Task'
duration: 75
milestone: true
outcomes:
  - c20de1de-7385-484a-8c37-cca80c568338
  - f5f88402-ea58-4114-a1b9-f27574291963
  - e2be0620-203c-4fa3-9211-8d18800f2777
  - 18980334-9bf4-4f06-a2e8-192d86ba2b81
  - 37efb9ae-d6e4-48a5-a968-fd83b244984b
---


In this exercise, you will set up your new Vagrant development environment. This is a very important first step as you will be using this virtual machine (VM) throughout the course for all coding assignments and projects, and likely even thereafter for personal projects.

> #### Danger
> As we mentioned before Microsoft Windows is not (yet) supported in this program.

While we strongly recommend using an Apple Macbook for your laptop, we also understand that it's not exactly the most economical option. If you already own a Windows laptop (which meets our <a href="https://www.lighthouselabs.ca/faq#details" target="_blank">minimum specs</a>) then you are expected to install and use Linux either alongside (dual boot) or instead of Windows. <a href="http://www.ubuntu.com/desktop/developers" target="_blank">Ubuntu</a> is our suggested vendor, but Mint is also a fair option.

There are many guides / tutorials that help you install Ubuntu and many of them are specific to your version of Windows. Please google and find a recent and appropriate one that addresses your specific needs.

Another alternative is to simply purchase an Ubuntu-based laptop, which Dell and other manufacturers do sell.

<!--  -->

> #### Danger
> No Virtualization For Apple M1 Users!

If you are fortunate enough to own one of the newer (2020) M1-based Macbook machines, then you have to follow a custom installation path. 

Apple's M1 machines do not currently support virtualization. The big companies are working hard to get this support out. 

For this reason, if you are a proud M1 owner, please _skip this activity_. To do this, you can simply mark it completed, then head on over to the [M1-specific setup instructions](/ffce4825-6ae1-461e-b647-fdd7d51228c8) in this module.

**Okay! Let's get setup!**

Assuming the above disclaimers _do not apply_ to you, let's set up our Vagrant-based Development Environment.

> #### Instruction
> Please download and install the following software.

#### VirtualBox

Download and install Oracle's [VirtualBox 6.1.16](https://www.virtualbox.org/wiki/Downloads). Please note that the screenshot below does not show the exact same minor version.

![Screenshot](https://i.imgur.com/pw10MBQ.png)

The MacOS version will start to download when you click the link.

Ubuntu users will be taken to a new page and will have to select the correct download for their version of Ubuntu. 

![Screenshot](https://i.imgur.com/E4l8evn.png)

If you are unsure about your Ubuntu version, check out the link below for instructions on how to find the version number: 

[Ubuntu — Show Version Number (Command Line and Unity)](http://www.hostingadvice.com/how-to/ubuntu-show-version/)

#### Troubleshooting VirtualBox + Ubuntu Issues

If you are using Ubuntu, you may encounter an issue with VirtualBox:

* **Problem**: Secure Boot is enabled so the virtualbox kernel modules cannot be installed.
  - **Description**: When installing VirtualBox, if the installation detects that Secure Boot is enabled, you will be presented with the issue at hand and given the option to disable Secure Boot.
  - **Solution**: Either [Disable Secure Boot in the BIOS](https://www.avira.com/en/support-for-home-knowledgebase-detail/kbid/1811) OR [Self-Sign the Kernel module](https://stegard.net/2016/10/virtualbox-secure-boot-ubuntu-fail/)


#### Vagrant

Download [Vagrant 2.2.13](https://releases.hashicorp.com/vagrant/2.2.13/) (The .dmg for Mac OS X, or .deb for Debian/Ubuntu Linux), then install it _after_ you've installed VirtualBox. This is important! While you can download both software concurrently, you must install VirtualBox first.

### Setup Instructions

#### Step 1 - Terminal

Open your Terminal app. If you have never opened it before, it can be found in `Applications/Utilities` or you can use Spotlight to open it.

#### Step 2 - Create / Switch Directories

Enter the following commands.

```terminal
cd ~/
```

```terminal
mkdir lighthouse
```

The first command switches you to the home directory, in case you are not already there.

The second command creates a directory called _lighthouse_ (in your home directory).

Remember this directory, because it is where all of your work will be saved!

In fact, open your home directory in Finder using the following command.

```terminal
open .
```

Drag and drop the `lighthouse` folder we just created into your Favourites on the left-hand side of Finder.

Now, from the Terminal, `cd` into the directory you just created .

```terminal
cd lighthouse
```

This will also be the folder where our virtual machine will reside.

#### Step 3 - Initialize Virtual Machine

Let's initialize our virtual machine _inside_ the `lighthouse` folder that we are currently inside. Run the following command from the command line:

```terminal
curl -O http://d10ofk0qhbh8u9.cloudfront.net/vagrant/Vagrantfile
```

This will download the configuration file (a file named `Vagrantfile`) into your (previously empty) `lighthouse` directory. Note that it will fail if you don't have an internet connection. It shouldn't take long at all (a few seconds only) as it's just a small text file.

Use the `ls -al` command from the current (`lighthouse`) folder to ensure that the file is indeed present.

#### Step 4 - Download and Boot VM

It's time to download the (large) virtual machine from our servers and boot it up. Run the following command.

```terminal
vagrant up
```

**Note:** This command will take a little bit of time to complete, depending on your internet speed, as it's downloading a 900MB file. Please be patient. The download will only happen the first time we use `vagrant up`. Any subsequent uses of this command will not re-download this file from our servers.

**Possible issue:** If you're running macOS, you may see an error message like this:
```terminal
An error occurred while downloading the remote file. The error message, if any, is reproduced below. Please fix this error and try again.
```

This is a [known issue](https://github.com/mitchellh/vagrant/issues/7970) in certain versions of Vagrant and macOS. If this happens, please run the following command on your terminal and run `vagrant up` again:
```terminal
sudo rm -rf /opt/vagrant/embedded/bin/curl
```

#### Step 5 - Connect to VM

SSH into your VM box.

```terminal
vagrant ssh
```

This logs you into the Vagrant machine. Your terminal prompt should now look something like the following.

```markdown
vagrant [vagrant]>
```

##### IMPORTANT

**You are now in the development Virtual Machine. You should ensure that you're in here when using git, node, mocha, knex, rails and other command line stuff going forward.**

#### Step 6 - Test / Demo File Sync

From inside the Virtual Machine, go to the `/vagrant` directory. (Hint: You may be in it already. Check your prompt. If it looks like  `vagrant [vagrant]>`, then you are there. If not use the following command to get there.

```terminal
cd /vagrant
```

Create an empty file, to make sure it shows up on your host (actual) machine in the same directory as the Vagrantfile.

```terminal
touch temp_test_file.txt
```

Now, you can see that file in your Vagrant machine, and you can open Finder on your Mac and navigate to the `lighthouse` directory under your home directory (recall that we favourited it to the left-hand side of Finder before). You should see the same test file that you just "touched" (created) there.

#### Step 7 - Logout of VM

Now that you have started up your Vagrant machine and have made your first file there, you're going to learn how to shut down Vagrant if you ever need to. Sometimes, the shared folder might get out of sync between your Mac and Vagrant, and you will need to stop and restart your Vagrant machine to solve this problem. To do this, first you want to log out of the Vagrant machine. There are two ways for you to do this.

> Use the following command which can be run from anywhere on the machine. It will log you out of the the VM and leave you back in your Mac OSX prompt.

 ```terminal
 logout
 ```

> OR use <kbd>Ctrl + D</kbd> - This is a terminal shortcut on Linux/Unix machines for logging out. It works on both your Vagrant box, and your Mac Terminal.

#### Step 8 - Halt VM

From your Mac Terminal (while still in the _lighthouse_ folder), type the following.

```terminal
vagrant halt
```

This will shut down your Vagrant machine. You must enter this command from the `lighthouse` directory, otherwise Vagrant won't know which machine you want to stop. This process takes a few seconds to complete. Once it is done, your Vagrant machine is shut down.

#### Step 9 - VM Status Command

You can always get the status of your Vagrant machine by issuing the following command from your `lighthouse` directory.

```terminal
vagrant status
```

#### Step 10 - Start & Connect to VM Again

Let's start your Vagrant machine back up! Make sure you're still in the `lighthouse` directory, and enter the following two commands.

```terminal
vagrant up
```
```terminal
vagrant ssh
```

Now you will be back at your Vagrant prompt (remember `vagrant [vagrant]>`?). Refer back to the commands above if you ever need to shut down or restart Vagrant.


### Conclusion

* Your laptop/computer is considered the "host machine".
* You won't be running node, git, ruby, etc. commands on your host machine.
* The Vagrant box serves as a "guest machine", where all that stuff comes preinstalled.
* Many companies use Vagrant for their developers, so it's not just for schools or new developers.
* The guest machine you are given is Linux-based, using Ubuntu. So it works very similarly to Mac OS X.
* With this machine, we are ensuring that you have the correct versions of all the utilities you will need to be able to complete the exercises.
* Think of the VM as a machine within a machine, a laptop inside your actual laptop. It has its own operating system, files and folders, users, etc.
* That said, the `/vagrant` folder in the guest machine is synced automatically by Vagrant with the folder on your host machine that contains the `Vagrantfile`.
* The reason for the shared folder is that you will use apps like VS Code on your host machine to edit files but you will usually run those files from the guest machine. So there needs to be a way for both machines to be able to share files. The host updates the files, the guest sees the changes instantly so you can run them.
* The guest machine is like a regular machine, except it does not have a Graphical User Interface, or GUI. It is thus a "head-less" machine. You can only access it using SSH via the command line.
