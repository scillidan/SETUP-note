# SETUP-note

I generally use `Windows 10`, but I've been using `Arch`, `Ubuntu 22.04 ARM` recently. So I tried to write some `SETUP` scripts to configure some software on them.

Before using, please read `README.md` and `SETUP` scripts. I keep some comments in them, and `_` folder, which are useful `.log` content for me. Them are just still simple `.bat` or `.sh`. Your can write your own scripts.

And before you test the scripts, please back up your data!!

## For Me

For some software, I install `Portable Version` on `~/Opt`.

```sh
mkdir ~/Github
cd Github
git clone https://github.com/scillidan/SETUP-note
```

```sh
mkdir ~/Source
```

Then, I put all `SRC(Source)` the cloned repos into `~/Souce/$APP_sources`, and put all `DL(Download)` into `~/Souce/$APP_downloads`.