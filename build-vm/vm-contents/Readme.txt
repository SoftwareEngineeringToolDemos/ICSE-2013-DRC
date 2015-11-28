Dangling Reference Checker (DRC)

Authors:          Hung Viet Nguyen
Personal Website: http://home.engineering.iastate.edu/~hungnv/Personal/index.php


ABOUT
============
This file lists the steps to run the DRC tool (an Eclipse plugin) for detecting dangling references in a PHP file with embedded HTML and JavaScript. The VM has been configured such that Eclipse should start automatically when you log in to this machine as 'drcuser' user. The plugin and its dependencies are pre-installed in the Eclipse directories and ready to be used. A sample project, 'myPHPwebsite', having a single PHP file has been created to demostrate the tool's capabilities. The first three steps below are optional.

Note: You are logged in to this virtual machine as 'drcuser'. This user account is already configured for password-less login and 'sudo' commands. But if you ever need a password, it is the same as the username - 'drcuser' (without the quotes).


INSTRUCTIONS
============

[Step 1 (optional)] Start Eclipse
- Double click the Eclipse icon on the desktop, OR
- Go to the Applications menu on the top-left, and start typing 'eclipse' in the search bar. Click on the the Eclipse icon when it appears.

---

[Step 2 (optional)] Create/import a PHP project

Once you see the Eclipse UI,  you should see (on the left) the sample PHP project 'myPHPwebsite' already present in the workspace. However, if you like to create or import your own PHP project, you may do so using the File->Import, or File->New->PHP Project menu options, respectively.

---

[Step 3 (optional)] Enable the plugin views

If the 'DRC Dangling Reference View' and 'DRC Entity Table' views (tabbed windows at the bottom in the Eclipse UI) are not visible: Go to Window->Show View->Other menu. In the 'Show View' window that appears, expand the 'ERef' category to reveal two items - 'DRC Dangling Reference View' and 'DRC Entity Table'. Select both the items, and click OK. This should now have enabled two tabbed views.

---

[Step 4] View dangling references in a PHP file

Open a PHP file in the workspace project from the PHP Explorer on the left. For example, in the sample PHP project 'myPHPwebsite', open the file index.php. When the file opens, switch to the 'DRC Dangling Reference View' by clicking on the view's tab. Now click on the 'Detect Dangling References' button on the right. It should now show you two lists - 'Entity List', and 'Reference List'. In the 'Entity List', click on the first row with the Entity Name '[Dangling References]'. This shows all the variables that are dangling references in the opened PHP file - including PHP, JavaScript, and HTML entities. Selecting one of these highlights the variables in the file.

A description of what you see:
The [Dangling References] category shows all variables that are referenced but not declared under the reference conditions. The other categories listed in the 'Entity List' are the unique variables in the file. When you select one of them, you can see all references and declarations of that variable on the right in the file.

---

