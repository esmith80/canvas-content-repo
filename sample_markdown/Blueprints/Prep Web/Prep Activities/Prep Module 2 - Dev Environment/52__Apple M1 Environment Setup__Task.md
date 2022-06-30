---
uuid: ffce4825-6ae1-461e-b647-fdd7d51228c8
name: 'Setup Apple M1 Machine'
duration: 60
---

> #### Danger
> **This exercise is _only_ intended for Apple M1 owners!**

If you own a new Apple M1 machine (released 2020), then we ask you to follow the instructions in this exercise instead of those found in the earlier [Setup Your VM](/f252cd05-4b9d-4a70-89d4-40f5dcc2d553) exercise. This is a temporary measure until Apple and other companies sort out virtualization issues on the M1. 

If you do _NOT_ own said machine, please mark this activity as completed without actually going through it (skip it).

## Context

Instead of installing Vagrant and VirtualBox, which presently _do not work_ on the M1 architecture, we'll install Node and other dependencies directly into your host (MacOS) environment, thereby avoiding any virtualization. In the future, when the community catches up to this new architecture, we hope to remove this special case.

> #### Warning
> **Reminder:** Read the output to ensure that each command/step succeeds!

Quite often, when following step-by-step installation guides like this one, we tend to run them without reading their output for errors. This can be problematic because each step assumes that the previous one has succeeded. Please be mindful and read the output from each step, looking for any error messages that suggest complete failure (i.e. not warnings) when running each command.

## Installation steps

One of our instructors made a video tutorial to complement the installation instructions. Every instructions and lines of code are provided under the video. 

<iframe style="width: 100%; height:560px" src="https://www.youtube.com/embed/iGF3BB5oyZY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Pro tip: If you don't already have it, add the Terminal.app to your Dock. You'll be using it quite a bit throughout your development career.

### Installing Xcode & Related Tools

- Open the App Store
- Search for Xcode
- Download Xcode from the App Store
- Open and accept the EULA & the additional tools installation
- Open the terminal App and type `git` and `Enter` to confirm the installation was complete

### Installing Homebrew

- Open the terminal App
- Copy the following command in the terminal 
  
```bash 
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- Type your password and follow the instructions
- Once installed, copy & paste the two lines mentionned at the end of the homebrew install (they start with `echo` & `eval`)
- Quit the terminal App

### Installing additional packages

Let's install additional librairies for databases using the Homebrew package manager.

- Open the terminal App
- Install postgresq & the libpq library with this command:
  
```bash
  brew install libpq postgres rbenv ruby-build --build-from-source
```
- Quit the terminal App

### Installing NVM

We'll be installing a command-line tool called NVM, which stands for "Node Version Manager". It does what it says it does, helping us manage multiple node versions. NVM a good tool used by many developers. Even though we'll be using just a single version of node, it is important to set up this version manager to help avoid headaches in the future. 

- Open the terminal App
- Run the following command in Terminal:
  
```bash
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
```
- Open your profile configuration file by typing `nano ~/.zprofile`
- Copy and Paste (<kbd>Cmd</kbd> + <kbd>V</kbd>) the following line as a new line somewhere in it:

```bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

- Save changes and quit nano using <kbd>Ctrl</kbd> + <kbd>X</kbd> keys, then pressing <kbd>Y</kbd> (to mean Yes), then <kbd>Enter</kbd>
- Quit the terminal App
- Open the terminal App
- Confirm NVM is working by typing `nvm -v` in the terminal, we should see the version number.
- Quit the terminal App

### Installing Node 

Finally, we can install Node and carry on with the fun stuff of coding. 

- Open the terminal App
- In terminal, run the following command: `nvm install 15`
- You may want to go grab a quick coffee, tea, or 7-Eleven Slurpee. This will take a few minutes.
- Confirm that Node was installed successfully by running the command `node -v`, we should see the version number.
- Quit the terminal App

### Installing RBenv & Ruby

We'll be installing a command-line tool called RBenv, which does for Ruby what NVM does for Javascript, helping us manage multiple ruby versions. 

- Open the terminal App
- In the terminal, install ruby by typing: 
`RUBY_CFLAGS="-Wno-error=implicit-function-declaration" rbenv install 2.6.6`
- Initialize RBenv by typing: `rbenv init`
- Copy the line in your `~/.zprofile`, after the line about homebrew.
- Make the ruby installation global by typing: `rbenv global 2.6.6`
- Confirm it's working by typing `ruby -v`, it should show the 2.6.6 version
- Install the bundler tool by typing `gem install bundler:1.16.1`
- Quit the terminal App

## Done & Disclaimer!

We're good to go for now! 

> #### Warning
> There will be more stuff to install later.

Because this isn't our pre-configured virtual machine, as an M1 user, you will need to install additional tools and software like Postgres, etc. We will deal with them later, as we need them.

> #### Warning
> Ignore "Vagrant" mentions in the instructions.

The instructions assume that students are using virtualization through Vagrant and VirtualBox. We will mention things like "vagrant ssh", "vagrant up", and "log into your vagrant machine". You can simply skip these steps as you will be working directly in your host (MacOS) environment. 

The next couple of activities in this module are concerned with VMs and virtualization. Despite not using this technology at the moment, we suggest properly completing this informative material. 

_Onward!_
