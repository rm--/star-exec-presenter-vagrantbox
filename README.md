## Vagrantbox for [star-exec-presenter](https://github.com/rm--/star-exec-presenter)

### what do you get:
* running Ubuntu Server 14.04 LTS VM
* deployed fca-project branch of star-exec-presenter

### what you need:
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [vagrant](http://docs.vagrantup.com/v2/installation/index.html)
* [saltstack](http://docs.saltstack.com/en/latest/)

### what to do:
#### Clone the repository including star-exec-presenter

`git clone --recursive git@github.com:rm--/star-exec-presenter-vagrantbox.git`

#### Write your [starexec](www.starexec.org) credentials

[in the file star_exec](salt/roots/salt/star-exec-presenter/star_exec)

#### Start VM provisioning
`vagrant up` and choose network interface

#### Start web server

```
vagrant ssh
cd /vagrant/star-exec-presenter && yesod devel
```
####  Open your favorite web browser and take a look
[localhost:3000/concepts/7239](http://localhost:3000/concepts/7239)
