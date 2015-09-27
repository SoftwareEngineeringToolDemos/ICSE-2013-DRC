# ICSE-2013-DRC

This repository contains information related to the tool _Dangling Reference Checker_ (DRC) presented at the International Conference on Software Engineering, 2013. The tool was originally presented in [this paper](http://dl.acm.org/citation.cfm?id=2486989).

This repository _is not_ the original repository for this tool. Here are some links to the original project:
* [The official project page, not including source code](http://home.engineering.iastate.edu/~hungnv/Research/DRC/?page=introduction)
* [A slide set for the tool](http://home.engineering.iastate.edu/~hungnv/Personal/slides/DRC-Tool.pdf)
* [A video of the tool](https://www.youtube.com/watch?v=y_AKZYhLlU4)

In this repository for DRC, you will find:
* :white_check_mark: The original source code for the tool (Commit 2cbd46ed1b9a50eeb517126ba034d78ee885f63b)
* :white_check_mark: A slightly modified version of the source code, [Jayant Dhawan](https://github.com/jayantdhawan) got working

This repository was constructed by [Jayant Dhawan](https://github.com/jayantdhawan) under the supervision of [Emerson Murphy-Hill](https://github.com/CaptainEmerson). Thanks to Hung Hung Viet Nguyen (one of the authors of the tool) for his help in resolving tool dependencies.

---

## Instructions

This tool has been distributed as a collection of Eclipse plugin projects, that can be imported into Eclipse and built. The repository's root contains the following folders:
- __projects__: Four Eclipse projects for this tool.
- __dependencies__: A collection of JAR files - external Eclipse plugins that the above projects depend upon.

### Description of /projects
Contains the following Eclipse projects:
- __Data Model__: Symbolic executor for PHP
- __Html Partial Parser__: Parser for the output of symbolic execution
- __Web Entities__: Detection of embedded entities and dangling references
- __edu.iastate.hungnv.babelref__: Eclipse plugin for showing embedded entities and dangling references (provided by edu.iastate.hungnv.babelref.ui.views.ERefEntityView)

### Description of /dependencies
Apart from being inter-dependent, the projects also have dependencies on external Eclipse plugins. These plugins that the projects in this repository depend on are provided in the _dependencies_ folder. The recommended way of using the dependencies is copying all files included in the _dependencies_ folder to the plugin folder of your Eclipse install directory. On Linux-based systems, generally, this directory is located at `/usr/share/eclipse/plugins`, but it may differ based on your Eclipse installation.

It is important to note here that the dependencies are already listed in the _.classpath_ file in each of the projects. Depending on where you keep the plugins provided in the _dependencies_ folder, changes may be required to the _path_ attributes for the _classpathentry_ in the _.classpath_ files for the projects. This may be done by manually editing the _.classpath_ files, or by using the _Build Path -> Configure Build Path_ options for the Eclipse projects.


## Attribution

Author of tool: Hung Viet Nguyen
 
Personal website: http://home.engineering.iastate.edu/~hungnv/Personal/index.php
