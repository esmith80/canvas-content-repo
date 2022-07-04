

This section aims to motivate you to learn _the command line_ and explains why it is important especially in data science.


## The Command Line in Data Science

To explain this topic we will use a part of a great book about **Data Science at the Command Line** from **Jeroen Janssens**:


### Why Data Science at the Command Line?

_The command line_ has many great advantages that can really make you a more efficient and productive data scientist. Roughly grouping the advantages, _the command line_ is: agile, augmenting, scalable, extensible, and ubiquitous. We elaborate on each advantage below.

#### The Command Line is Agile

The first advantage of _the command line_ is that it allows you to be agile. Data science has a very interactive and exploratory nature, and the environment that you work in needs to allow for that. _The command line_ achieves this by two means.

First, _the command line_ provides a so-called read-eval-print-loop (REPL). This means that you type in command, press , and the command is evaluated immediately. A REPL is often much more convenient for doing data science than the edit-compile-run-debug cycle associated with scripts, large programs, and, say, Hadoop jobs. Your commands are executed immediately, may be stopped at will, and can be changed quickly. This short iteration cycle really allows you to play with your data.

Second, _the command line_ is very close to the file system. Because data is the main ingredient for doing data science, it is important to be able to easily work with the files that contain your data set. _The command line_ offers many convenient tools for this.

#### The Command Line is Augmenting

Whatever technology your data science workflow currently includes (whether it’s R, IPython, or Hadoop), you should know that we’re not suggesting you abandon that workflow. Instead, _the command line_ is presented here as an augmenting technology that amplifies the technologies you’re currently employing.

_The command line_ integrates well with other technologies. On the one hand, you can often employ _the command line_ from your own environment. Python and R, for instance, allow you to run command-line tools and capture their output. On the other hand, you can turn your code (e.g., a Python or R function that you have already written) into a command-line tool. We will cover this extensively in Chapter 4. Moreover, _the command line_ can easily cooperate with various databases and file types such as Microsoft Excel.

In the end, every technology has its advantages and disadvantages (including _the command line_), so it’s good to know several and use whichever is most appropriate for the task at hand. Sometimes that means using R, sometimes _the command line_, and sometimes even pen and paper. By the end of this book you’ll have a solid understanding of when you could use _the command line_, and when you’re better off continuing with your favorite programming language or statistical computing environment.

#### The Command Line is Scalable

Working on _the command line_ is very different from using a graphical user interface (GUI). On _the command line_ you do things by typing, whereas with a GUI, you do things by pointing and clicking with a mouse.

Everything that you type manually on _the command line_, can also be automated through scripts and tools. This makes it very easy to re-run your commands in case you made a mistake, when the data set changed, or because your colleague wants to perform the same analysis. Moreover, your commands can be run at specific intervals, on a remote server, and in parallel on many chunks of data (more on that in Chapter 8).

Because _the command line_ is automatable, it becomes scalable and repeatable. It is not straightforward to automate pointing and clicking, which makes a GUI a less suitable environment for doing scalable and repeatable data science.

#### The Command Line is Extensible

_The command line_ itself was invented over 40 year ago. Its core functionality has largely remained unchanged, but the tools, which are the workhorses of the command-line, are being developed on a daily basis.

_The command line_ itself is language agnostic. This allows the command-line tools to be written in many different programming languages. The open source community is producing many free and high-quality command-line tools that we can use for data science.

These command-line tools can work together, which makes _the command line_ very flexible. You can also create your own tools, allowing you to extending the effective functionality of _the command line_.

#### The Command Line is Ubiquitous

Because _the command line_ comes with any Unix-like operating system, including Ubuntu Linux and macOS, it can be found in many places. According to an article on Top 500 Supercomputer Sites, 95% of the top 500 supercomputers are running GNU/Linux. So, if you ever get your hands on one of those supercomputers (or if you ever find yourself in Jurassic Park with the doors locks not working), you better know your way around _the command line_!

But GNU/Linux not only runs on supercomputers. It also runs on servers, laptops, and embedded systems. These days, many companies offer cloud computing, where you can easily launch new machines on the fly. If you ever log in to such a machine (or a server in general), there’s a good chance that you’ll arrive at _the command line_.

Besides mentioning that _the command line_ is available in a lot of places, it is also important to note that _the command line_ is not a hype. This technology has been around for more than four decades, and we’re personally convinced that it’s here to stay for another four. Learning how to use _the command line_ (for data science) is therefore a worthwhile investment.


_Source: J. Janssens,  [**Data Science at the Command Line**](https://www.datascienceatthecommandline.com/) (2019)_.
