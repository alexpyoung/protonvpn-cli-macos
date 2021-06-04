<h1 align="center">ProtonVPN-CLI for MacOS</h1>
<p align="center">
  <img src="resources/images/linux-cli-banner.png" alt="Logo"></img>
</p>

<h3 align="center">An [unofficial] MacOS CLI for ProtonVPN. Written in Python.</h3>

## Important information
Killswitch functionality is not available for MacOS because it uses `iptables` and such.  This repo simply includes a slight rewrite of the `utils.py` script that will grab the default interface via `netstat` instead of requiring `iproute2` as a dependency.

## Installation & Updating

For more detailed information on installing, updating and uninstalling, please view the extensive [usage guide](https://github.com/ProtonVPN/linux-cli/blob/master/USAGE.md#installation--updating).

#### Installing Dependencies

**Dependencies:**

- homebrew
- openvpn
- dialog (optional, needed for interactive selection)
- pip for python3 (pip3)
- python3.5+
- setuptools for python3 (python3-setuptools)

Depending on your distribution, run the appropriate following command to install the necessary dependencies

| **Distro**                              | **Command**                                                        |
|:----------------------------------------|:------------------------------------------------                   |
|MacOS                       | `brew install openvpn dialog python3`       |


### Manual Installation from source

*Disclaimer: If you are unsure about what you're doing, please follow the [normal installation guide](https://github.com/ProtonVPN/linux-cli/blob/master/USAGE.md#installation--updating).*

It is recommended to do the manual installation in a virtual environment. Especially if it serves the purpose of developing.

1. Clone this repository

    `git clone https://github.com/phx/protonvpn-cli-macos`

2. Step into the directory

   `cd protonvpn-cli-macos`

3. Install

    ```
    pip3 install -r requirements.txt
    sudo python3 setup.py install
    ```

For updating, you just need to pull the latest version of the repository with git.

### How to use

#### For more detailed information, see the extensive [usage guide](https://github.com/ProtonVPN/linux-cli/blob/master/USAGE.md).

| **Command**                       | **Description**                                       |
|:----------------------------------|:------------------------------------------------------|
|`protonvpn init`                   | Initialize ProtonVPN profile.                         |
|`protonvpn connect, c`             | Select a ProtonVPN server and connect to it.          |
|`protonvpn c [servername]`         | Connect to a specified server.                        |
|`protonvpn c -r`                   | Connect to a random server.                           |
|`protonvpn c -f`                   | Connect to the fastest server.                        |
|`protonvpn c --p2p`                | Connect to the fastest P2P server.                    |
|`protonvpn c --cc [countrycode]`   | Connect to the fastest server in a specified country. |
|`protonvpn c --sc`                 | Connect to the fastest Secure Core server.            |
|`protonvpn reconnect, r`           | Reconnect or connect to the last server used.         |
|`protonvpn disconnect, d`          | Disconnect the current session.                       |
|`protonvpn status, s`              | Print connection status.                              |
|`protonvpn configure`              | Change CLI configuration.                             |
|`protonvpn refresh`                | Refresh OpenVPN configuration and server data.        |
|`protonvpn examples`               | Print example commands.                               |
|`protonvpn --version`              | Display version.                                      |
|`protonvpn --help`                 | Show help message.                                    |

All connect options can be used with the `-p` flag to explicitly specify which transmission protocol is used for that connection (either `udp` or `tcp`).
