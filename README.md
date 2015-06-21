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


source:
- [ ] add star-exec-presenter as submodule

todo:
- [ ] introduce HASKELL_VERSION variable to switch easily GHC version
- [ ] check box memory
- [ ] don't forget to add sandbox path to env var PATH
- [ ] try setup with Ubuntu
