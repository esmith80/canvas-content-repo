---
uuid: 9c986b9f-2fb5-4d4e-a387-0c17524e156e
name: 'Virtual Machines'
duration: 20
questions:

  -
    question: What is the command to connect to a running virtual machine using Vagrant?
    uuid: be809b23-dd53-40f5-be79-c632c2337910
    outcome: e2be0620-203c-4fa3-9211-8d18800f2777
    options_attributes:
      -
        answer: "`vagrant connect <machine name>` where `<machine name>` is the actual name of the VM."
        explanation: "Incorrect. The `vagrant connect` command is a valid vagrant command, but it does not connect the user to a running virtual machine."
      -
        answer: "`vagrant connect` by itself, from within the directory that holds the file `Vagrantfile`"
        explanation: "Incorrect. The `vagrant connect` command is a valid vagrant command, but it does not connect the user to a running virtual machine."
      -
        answer: "`vagrant up` from within the directory that holds the file `Vagrantfile`"
        explanation: "Incorrect. The `vagrant up` boots up the vagrant virtual machine. Once booted, it can be connected to with the correct command."
      -
        answer: "`vagrant ssh <machine name>` where `<machine name>` is the actual name of the VM."
        explanation: "Incorrect. The `vagrant ssh` command does not require the name of the virtual machine. Though it does have a specific requirement in order to connect..."
      -
        answer: "`vagrant ssh` by itself, from within the directory that holds the file `Vagrantfile`"
        explanation: "Correct! Once you have booted up your virtual machine with `vagrant up`, you can connect to your machine with `vagrant ssh`. However, in order to do so, there must be a valid `Vagrantfile` in the current working directory"
        correct: true
      

  -
    question: Which of the following is **NOT** a benefit of using a Virtual machine for your work?
    uuid: 348ca464-5e55-49e5-8ced-c946c4ceaf3e
    outcome: 1c288a79-f974-4a19-8aa7-4f6fce24b132
    options_attributes:
      -
        answer: "Performance: The guest VM runs slightly faster thanks to virtualization optimizations in Virtualbox and Vagrant."
        explanation: "It's actually a bit slower because it uses extra CPU and RAM to run this completely separate machine."
        correct: true
      -
        answer: "Consistency: Developers all work on the same environment as each other, consistent also with the server."
        explanation: "This is a **HUGE** benefit to using virtual machines for development. Remember: we are looking for the answer that is not an actual benefit of VM use."
      -
        answer: "Isolation: By keeping things separate, developers don't have to worry about accidental disasters to their host operating system."
        explanation: "This is a **HUGE** benefit to using virtual machines for development. Remember: we are looking for the answer that is not an actual benefit of VM use."
      -
        answer: "Pre-configured: Developers can start working on their application instead of first configuring and installing dependencies for it."
        explanation: "This is a **HUGE** benefit to using virtual machines for development. Remember: we are looking for the answer that is not an actual benefit of VM use."
      -
        answer: "All of the above are actually benefits of VMs."
        explanation: "There is actually one which is not!"

  -
    question: "Which directory in your Vagrant VM is the synchronized folder (ie. where you should be working)?"
    uuid: c206112c-bb81-4925-8fd4-fcfcdacf591f
    outcome: 18980334-9bf4-4f06-a2e8-192d86ba2b81
    options_attributes:
      -
        answer: "`/vagrant`"
        explanation: "Correct! This is the one that Vagrant by default syncs with your host machine."
        correct: true
      -
        answer: "`/home/vagrant`"
        explanation: "This is your home directory, which is often confused with the synchronized directory."
      -
        answer: "`/work`"
        explanation: "This directory doesn't exist by default."
      -
        answer: "`/`"
        explanation: "This is the root of the entire filesystem, and would be overkill to sync with your host machine."
      -
        answer: "`/home`"
        explanation: "This directory is where all the operating system's users have their home directories."

  -
    question: "What roles do Vagrant and VirtualBox play in helping us do our work in a virtual machine?"
    uuid: 0e1d4ccd-fd5b-46a6-976b-e5da6d98dfe8
    outcome: f5f88402-ea58-4114-a1b9-f27574291963
    options_attributes:
      -
        answer: "VirtualBox manages the file system and Vagrant manages the guest Operating System."
        explanation: "Incorrect. VirtualBox actually plays a much larger role in the use of Vagrant."
      -
        answer: "Vagrant manages the file system and VirtualBox manages the guest Operating System."
        explanation: "Incorrect. VirtualBox and Vagrant have a different, more complex relationship."
      -
        answer: "VirtualBox is the virtualization software and Vagrant is a command line program to manage it more easily."
        explanation: "Correct. We _could_ use VirtualBox by itself, but it would not give us the convenience of using automation and the command line to easily manage our single or multiple VirtualBox VMs. Vagrant can also work with other VM vendors like VMWare."
        correct: true
      -
        answer: "Vagrant is the virtualization software and VirtualBox is a command line program to manage it."
        explanation: "Since we use `vagrant` commands from the command line, this can't be true."
      -
        answer: "Vagrant provides SSH and VirtualBox manages the operating system and does all the heavy lifting."
        explanation: "SSH is a separate utility that Vagrant leverages but does not provide."

  -
    question: |
      You've previously run `vagrant up` to create the VM, but now when you run `vagrant ssh` from Terminal the following error is reported.

      ```terminal
      vagrant ssh
      VM must be created before running this command. Run `vagrant up` first.
      ```

      What is the most likely cause?
    uuid: b6d08f1a-278b-47b0-a4a4-8dcb76d0b05c
    outcome: f926bbd6-25eb-4f38-9e6c-234f69322fc9
    options_attributes:
      -
        answer: "You've restarted your host machine."
        explanation: "Incorrect. While restarting your host machine would shut down your vagrant machine, you have just ran `vagrant up` which should have started it back up again. So why didn't it?"
      -
        answer: "VirtualBox has automatically shut down Vagrant because we haven't used it in a while."
        explanation: "Incorrect. VirtualBox does not shut down VMs for this reason. If this were true, we could potentially lose unsaved work. It would be disastrous."
      -
        answer: "You're not in the correct directory with the `Vagrantfile` where you last ran `vagrant up`."
        explanation: "Correct. The `vagrant ssh` command looks in the current directory to find the VM and this is typically the directory where the `Vagrantfile` resides and where you last ran `vagrant up`."
        correct: true
      -
        answer: "VirtualBox is not running."
        explanation: "Incorrect. Vagrant can interface with VirtualBox directly and you don't need to start it yourself."
      -
        answer: "My Vagrant machine is turned off."
        explanation: "Incorrect. While it's true that the machine must be powered on using `vagrant up` before we can `ssh` into it, Vagrant would report that as the issue."
---
