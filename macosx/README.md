Mac OSX Install Guide
================
Using virtualenv is the recommended way for working on Mac OSX

####  Using Python Virtualenv

virtualenv is a tool to create isolated Python environments.

##### 1. Install [Homebrew](http://brew.sh/)

Paste that at a Terminal prompt.

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

##### 2. Using Homebrew install Python and pip

First, create a new virtualenv called "ryu_venv":

`$ brew install python`

Then pip will work.

##### 3. Install the virtualenv

Using pip install virtualenv.

`$ pip install virtualenv `


##### 4. Setup virtualenv

First, create a new virtualenv called "ryu_venv":

`$ virtualenv ryu_venv`

Activate the newly created virtualenv:

`$ source ./ryu_venv/bin/activate`

Your shell prompt will now display the currently active virtualenv:

`(ryu_venv)$`


##### 5. Install the Ryu packages

```
(ryu_venv)$ STATIC_DEPS=true pip install lxml
(ryu_venv)$ pip install greenlet
(ryu_venv)$ pip install ryu
```

##### 6. Starting Ryu

Once you have properly setup virtualenv and install ryu, you can start ryu using following command:

`(ryu_venv)$ ryu-manager`

You may need to clone official source code for running sample application.

`$ git clone https://github.com/osrg/ryu.git`

Running a sample application

`(ryu_venv)$ ryu-manager ./ryu/ryu/ryu/app/simple_switch_13.py`


##### 7. Deactivate virtualenv

If you want to leave python virtualenv just using `deactivate` command.

`(ryu_venv)$ deactivate`


For more information on virtualenv, see [https://virtualenv.pypa.io/en/latest/](https://virtualenv.pypa.io/en/latest/)