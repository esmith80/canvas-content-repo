---
uuid: 5c1d897f-a420-4c02-9c78-b7a40533e592
name: 'Virtual Machines'
type: 'Reading'
duration: 30
outcomes:
  - 648d3b98-76a9-4ae8-bb10-43c5ae4409f6
  - 1c288a79-f974-4a19-8aa7-4f6fce24b132
---

Virtualization and Virtual Machines are a big topic and one that you'll be exposed to slowly throughout this prep course and the bootcamp.

In this activity, you'll be introduced to what they are and why they are useful.

## Reading

Instead of installing all the necessary dependencies ("things our web apps will need to run, like the language itself, other software packages, frameworks, libraries, etc") on our innocent little laptop, companies often provide their developers with a virtual machine which come pre-configured with all those software dependencies.

### What Is a Virtual Machine?

A virtual machine (VM) is a fully functional _virtual_ computer complete with operating system, CPU, RAM and hard drive that you run like any other program on your _physical_ computer.

Wait, a virtual computer? With it's own CPU and Hard Drive? What?

A VM makes use of your computer's physical hardware to run an isolated, simulated computer. You can use this computer through its GUI, depending on the operating system it has, or from within the Command Line. When creating a new VM you can configure it to use a certain portion of your physical machine's components (like RAM and hard drive space).

A VM can also have any operating system, regardless of the host machine's operating system. The web development industry generally prefers a Linux-based OS like Ubuntu.

### Rationale

You may ask: _Why are VMs ideal for running our development environment?_

1. Isolation - your development environment runs in its own contained sandbox and so it doesn't get impacted by what's already installed on your machine nor what's missing on your machine.
2. Consistency - everyone will be using the same development environment, regardless of what their actual laptop is running.
3. Ease of use - avoiding the need to install all the necessary languages, software, etc. You still have to install some stuff though. ;)
4. Automation - Companies can save time and energy by automating the creation and upkeep of one or more development environments.

For many of the reasons outlined above, Lighthouse Labs will be providing you with your very own virtual machine - an [Ubuntu Linux](http://www.ubuntu.com/desktop/developers) machine - which we've pre-configured with Node.js, Ruby, Postgres and many other dependencies that you'll need to get started as a developer.

The two main pieces of software you will install on your physical (host) machine are Vagrant and VirtualBox. Vagrant is the one you'll actually use directly so we'll be focusing more on that.

### What is Vagrant?

Vagrant is a VM automation tool that allows for easy configuration and distribution of VMs. In other words, it makes the installation of virtual machines more automatic instead of having users (you) do more work.

We will get into the actual installation of it in the next activity, but in the meantime this page from the Vagrant documentation will give you a general idea of it. Note: you do not need to read all of their documentation. Just reading this page should suffice for now.

[Why Vagrant](https://www.vagrantup.com/intro/index.html)
