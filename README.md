# SpaceOcean

SpaceOcean is a Qt native wallet for ([Spacecoin](https://pirate.black/)) (SPACE). It's available for Windows, Linux, MacOS.

**NB!** We have multiple branches:
- [master](../../tree/master) for building stable SpaceOcean binaries.
- [beta](../../tree/beta) for partially tested changes.
- [dev](../../tree/dev) for current work in progress.
- [tSPACE](../../tree/tSPACE) for building stable SpaceOcean binaries for tSPACE.
- [tSPACE_dev](../../tree/tSPACE_dev) for current work in progress of tSPACE.

Use the following scripts to build:

- Linux: `build-linux.sh` (native build)
- Windows: `build-win.sh` (cross-compilation for Win)
- MacOS: `build-mac.sh` (native build)

## How to build?

#### Linux

```shell
#The following packages are needed:
sudo apt-get install build-essential pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python python-zmq zlib1g-dev wget libcurl4-gnutls-dev bsdmainutils automake curl
```

```shell
git clone https://github.com/SpaceWorksCo/SpaceOcean --branch master --single-branch
cd SpaceOcean
./zcutil/fetch-params.sh
# -j8 = using 8 threads for the compilation - replace 8 with number of threads you want to use
./zcutil/build-linux.sh -j8
#This can take some time.
```


#### OSX
Ensure you have [brew](https://brew.sh) and Command Line Tools installed.
```shell
# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Install Xcode, opens a pop-up window to install CLT without installing the entire Xcode package
xcode-select --install
# Update brew and install dependencies
brew update
brew upgrade
brew tap discoteq/discoteq; brew install flock
brew install autoconf autogen automake
brew install gcc@6
brew install binutils
brew install wget
# Clone the Pirate repo
git clone https://github.com/SpaceWorksCo/SpaceOcean --branch master --single-branch
# Change master branch to other branch you wish to compile
cd SpaceOcean
./zcutil/fetch-params.sh
# -j8 = using 8 threads for the compilation - replace 8 with number of threads you want to use
./zcutil/build-mac.sh -j8
# This can take some time.
```

#### Windows
Use a debian cross-compilation setup with mingw for windows and run:
```shell
sudo apt-get install build-essential pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python python-zmq zlib1g-dev wget libcurl4-gnutls-dev bsdmainutils automake curl cmake mingw-w64
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
rustup target add x86_64-pc-windows-gnu

sudo update-alternatives --config x86_64-w64-mingw32-gcc
# (configure to use POSIX variant)
sudo update-alternatives --config x86_64-w64-mingw32-g++
# (configure to use POSIX variant)

git clone https://github.com/SpaceWorksCo/SpaceOcean --branch master --single-branch
cd SpaceOcean
./zcutil/build-win.sh -j8
# -j8 = using 8 threads for the compilation - replace 8 with number of threads you want to use
#This can take some time and you'll need to run zcutil/fetch-params.bat on the Win system.
```
**SpaceOcean is experimental and a work-in-progress.** Use at your own risk.



## Developers of Qt wallet ##
- SpaceWorks Developers : [@SpaceWorksCo](https://github.com/SpaceWorksCo)
- Pirate developer: [@ComputerGenie](https://github.com/TheComputerGenie)
- Main developer: [@Ocean](https://pirate-platform.slack.com/team/U8BRG09EV)
- IT Expert / Sysengineer: [@Decker](https://pirate-platform.slack.com/messages/D5UHJMCJ3)
