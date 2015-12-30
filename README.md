RyuInstallHelper
================
There are two ways to install ryu without any painful 

#### Option 1: Get the latest official version source build and install it.

(The Easiest Way)

An automatic installation script for build and install Ryu source code on Ubuntu 12.04+.

To make installation easiest. This helper script which should get all
dependencies and download, build, and install Ryu.

```
$ curl -sL https://raw.githubusercontent.com/sdnds-tw/ryuInstallHelper/master/ryuInstallHelper.sh | bash
```

That's it !!

Note: This script has only been tested on the most recent stable version of Ubuntu.

-----

#### Option 2: Using Python Virtualenv

virtualenv is a tool to create isolated Python environments.

##### 1. Install Ryu dependency

```
$ sudo apt-get update
$ sudo apt-get install git python-pip python-dev libxml2-dev libxslt1-dev -y
```

##### 2. Setup virtualenv

First, create a new virtualenv called "ryu_venv":

`$ virtualenv ryu_venv`

Activate the newly created virtualenv:

`$ source ./ryu_venv/bin/activate`

Your shell prompt will now display the currently active virtualenv:

`(ryu_venv)$`


##### 3. Install the Ryu packages

`(ryu_venv)$ pip install ryu`

##### 4. Starting Ryu

Once you have properly setup virtualenv and install ryu, you can start ryu using following command:

`(ryu_venv)$ ryu-manager`

You may need to clone official source code for running sample application.

`$ git clone https://github.com/osrg/ryu.git`

Running a sample application

`(ryu_venv)$ ryu-manager ./ryu/ryu/ryu/app/simple_switch_13.py`


##### 5. Deactivate virtualenv

If you want to leave python virtualenv just using `deactivate` command.

`(ryu_venv)$ deactivate`


For more information on virtualenv, see [https://virtualenv.pypa.io/en/latest/](https://virtualenv.pypa.io/en/latest/)

Enjoy hacking on SDN :smile:

Contributor
===========

- [John-Lin](https://github.com/John-Lin)
- [pichuang](https://github.com/pichuang)
- [PeterDaveHello](https://github.com/PeterDaveHello)
