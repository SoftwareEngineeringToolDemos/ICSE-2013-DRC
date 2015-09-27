# ICSE-2013-DRC

This repository contains information related to the tool _Dangling Reference Checker_ (DRC) presented at the International Conference on Software Engineering, 2013. The tool was originally presented in [this paper](http://dl.acm.org/citation.cfm?id=2486989).

This repository _is not_ the original repository for this tool. Here are some links to the original project:
* [The official project page, not including source code](http://home.engineering.iastate.edu/~hungnv/Research/DRC/?page=introduction)
* [A slide set for the tool](http://home.engineering.iastate.edu/~hungnv/Personal/slides/DRC-Tool.pdf)
* [A video of the tool](https://www.youtube.com/watch?v=y_AKZYhLlU4)

In this repository for DRC, you will find:
* :white_check_mark: [The original source code for the tool](SomeExecutableInTheRepo) (available)
* :white_check_mark: [A slightly modified version of the source code](AnotherExecutableInTheRepo) [Jayant Dhawan](https://github.com/jayantdhawan) got working (available)

This repository was constructed by [Jayant Dhawan](https://github.com/jayantdhawan) under the supervision of [Emerson Murphy-Hill](https://github.com/CaptainEmerson). Thanks to Hung Hung Viet Nguyen (one of the authors of the tool) for his help in resolving tool dependencies.

---

## Instructions

The repository's root contains the following folders:
- projects: Four Eclipse projects for this tool.
- dependencies: A collection of JAR files - external Eclipse plugins that the above projects depend upon.


### Projects
Following  Eclipse projects:
- Data Model: Symbolic executor for PHP
- Html Partial Parser: Parser for the output of symbolic execution
- Web Entities: Detection of embedded entities and dangling references
- edu.iastate.hungnv.babelref: Eclipse plugin for showing embedded entities and dangling references (provided by edu.iastate.hungnv.babelref.ui.views.ERefEntityView)

These projects have inter-dependencies and, therefore, must all be imported into Eclipse for the tool to build successfully. Apart from this, two of the tools above also have dependencies on 

### Dependencies
All plugins that the Eclipse projects in this repository depend on are provided in the _dependencies_ folder. The recommended way of using the dependencies is copying all files in the _dependencies_ folder to the plugin folder of your Eclipse install directory. Generally, this directory is `/usr/share/eclipse/plugins/`.

---

## Attribution

Author of tool: Hung Viet Nguyen
Personal website: http://home.engineering.iastate.edu/~hungnv/Personal/index.php
