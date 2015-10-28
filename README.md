# ICSE-2013-DRC

This repository contains information related to the tool _Dangling Reference Checker_ (DRC) presented at the International Conference on Software Engineering, 2013. The tool was originally presented in [this paper](http://dl.acm.org/citation.cfm?id=2486989).

This repository _is not_ the original repository for this tool. Here are some links to the original project:
* [The official project page, not including source code](http://home.engineering.iastate.edu/~hungnv/Research/DRC/?page=introduction)
* [A slide set for the tool](http://home.engineering.iastate.edu/~hungnv/Personal/slides/DRC-Tool.pdf)
* [A video of the tool](https://www.youtube.com/watch?v=y_AKZYhLlU4)

In this repository for DRC, you will find:
* :white_check_mark: The plugin archives needed to install the DRC plugin for your Eclipse installation
* :white_check_mark: [The original source code (plugin project) for the tool](https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-DRC/tree/master/projects-original)
* :white_check_mark: [A slightly modified version of the source code](https://github.com/SoftwareEngineeringToolDemos/ICSE-2013-DRC/tree/master/projects), [Jayant Dhawan](https://github.com/jayantdhawan) got working

This repository was constructed by [Jayant Dhawan](https://github.com/jayantdhawan) under the supervision of [Emerson Murphy-Hill](https://github.com/CaptainEmerson). Thanks to Hung Hung Viet Nguyen (one of the authors of the tool) for his help in resolving tool dependencies.

---

## Instructions

If you simply want to install the DRC plugin for your Eclipse software, you only need to look in the __/plugins__ directory described below. However, if you'd like to view the source code behind the plugin, then you need to know that the source code of this tool is composed of five Eclipse plugin projects, that can be imported into Eclipse and built. The directories of interest for this purpose are __/projects__ and __/dependencies__.

### Description of /plugins
If you want to get the DRC tool up and running in your Eclipse software, just copy the five .jar files in this directory to the _dropins_ folder of your Eclipse installation. Usually, this folder is located at `/usr/share/eclipse/dropins/`. Then run Eclipse from a shell by giving `eclipse -clean`. This will force Eclipse to clean its caches before starting.

### Description of /projects
Contains the following Eclipse projects that compose the source code for the DRC plugin:
- __Data Model__: Symbolic executor for PHP
- __Html Partial Parser__: Parser for the output of symbolic execution
- __Web Entities__: Detection of embedded entities and dangling references
- __edu.iastate.hungnv.babelref__: Eclipse plugin for showing embedded entities and dangling references (provided by edu.iastate.hungnv.babelref.ui.views.ERefEntityView)
- __Util__: Utilities project

_Note:_ The directory __/projects-original__ contains the original, unmodified source code for the tool, as provided by the authors.

### Description of /dependencies
Apart from being interdependent, the projects also have dependencies on external Eclipse plugins. These plugins that the projects in this repository depend on are provided in the _dependencies_ folder. The recommended way of using the dependencies is copying all files included in the _dependencies_ folder to the plugin folder of your Eclipse install directory. On Linux-based systems, generally, this directory is located at `/usr/share/eclipse/plugins`, but it may differ based on your Eclipse installation.

It is important to note here that the dependencies are already listed in the _.classpath_ file in each of the projects. Depending on the location of these plugins under the Eclipse directory, changes may be required to the _path_ attributes for the _classpathentry_ in the _.classpath_ files for the projects. This may be done by manually editing the _.classpath_ files, or by using the _Build Path -> Configure Build Path_ options for the Eclipse projects.


## Attribution

Author of tool: Hung Viet Nguyen
 
Personal website: http://home.engineering.iastate.edu/~hungnv/Personal/index.php
