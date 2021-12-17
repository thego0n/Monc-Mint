
# Monc-Mint

Monc-Mint is a bash script intended to be run directly after a fresh install of Linux Mint. It installs all commonly used software and drivers for programmers and developers.

This project is still in development and testing. While every care is being taken to test this script regularly, please use this at your own risk.


## Installation

Obtain an ISO from [Linuxmint.com](https://linuxmint.com/download.php), install it on a usb with [baleneEtcher](https://www.balena.io/etcher/) or [UNetbootin](https://unetbootin.github.io/) or install it on a [Ventoy](https://www.ventoy.net/en/doc_start.html) based USB.

Follow the Mint installation process as normal.

Install git on the fresh system using

```bash
sudo apt install git -y
```

Clone the project using
```bash
git clone https://github.com/monc949/Monc-Mint.git
```
Then navigate into the Monc-Mint directory.
And run the install file as sudo.

```bash
cd Monc-Mint
sudo ./install.sh
```

## Note
Script will begin by asking for your name and email address. This is just for the purpose of configuring your git username and email. Trust me I'm not stealing your details!! :laughing:

## Planned Features


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
