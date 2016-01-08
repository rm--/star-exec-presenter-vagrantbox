## Vagrantbox for [star-exec-presenter](https://github.com/rm--/star-exec-presenter)

### what do you get:
* running Ubuntu Server VM
* deployed fca-project branch of star-exec-presenter

### what you need:
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [vagrant](http://docs.vagrantup.com/v2/installation/index.html)
* [saltstack](http://docs.saltstack.com/en/latest/)

### what to do:
1. `git clone --recursive git@github.com:rm--/star-exec-presenter-vagrantbox.git`
2. `vagrant up` and choose network interface
3. `enter your [starexec credentials](salt/roots/pillar/star-exec-presenter.sls)`
4. start your favorite web browser and take a look at: `localhost:3000/concepts/7239`
