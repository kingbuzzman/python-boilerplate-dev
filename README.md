python-boilerplate-dev
===

This is a Django 1.5.x boiler plate project using vagrant. The idea is to clone this, then delete the .git/ directory and start your project with 99% percent of your development work ready to go.

Requirements:
* virtualbox (https://www.virtualbox.org/wiki/Downloads)
* * vagrant (http://downloads.vagrantup.com/)
* nodejs (for coffee-script, and anything else you may need later)
* * npm
* python
* * setup-tools
* * pip
* * virtualenv
* ruby (for scss and anything else you may need later)

Folder structure:
* cfg/
|- bin/
  All your development binaries go here
|- installation/
  All your server provision scripts (setup the server(s))
|- requirements/
  All your ruby/node/python dependencies
|- vagrant/
  Your vagrant specific scripts
* src/
|- (django project)


