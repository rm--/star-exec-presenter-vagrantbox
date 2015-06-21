## Vagrantbox for [star-exec-presenter](https://github.com/stefanvonderkrone/star-exec-presenter)

### what do you get:
- [x] running Ubuntu Server VM
- [ ] deployed master branch of star-exec-presenter


### what you need:
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [vagrant](http://docs.vagrantup.com/v2/installation/index.html)
* [saltstack](http://docs.saltstack.com/en/latest/)

### what to do:
1. `git clone git@github.com:rm--/star-exec-presenter-vagrantbox.git`
2. `vagrant up`
3. start your favorite webbrowser and look at: localhost ...

provisioning:
- [x] ghc
- [x] cabal
- [x] cabal-install
- [x] PostgreSQL
- [ ] installation of star-exec-presenter


submodules:
- [x] graphviz
- [x] star-exec-presenter

todo:
- [ ] introduce GHC_VERSION constant to switch version easily
- [ ] check box memory
- [ ] try setup with Ubuntu
