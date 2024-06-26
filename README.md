# Starship

![GitHub Tag](https://img.shields.io/github/v/tag/erifrats/starship?label=latest)

A glamorous [NixOS](https://nixos.org) installer, designed to offer good defaults and a secure environment for [Starfire](https://github.com/erifrats/starfire).

## Installation

Ensure you are booted into the NixOS installation environment.

1. Run the following command in the terminal to gain root access:

    ```
    sudo -i
    ```

2. Use the `parted -l` command to list available disks and identify the disk where you want to perform the installation.

3. Once you've identified the disk (e.g., `/dev/sda`), execute the following command to initiate the installation process:

    ```
    bash <(curl -L https://raw.githubusercontent.com/erifrats/starship/master/install.sh) /dev/sda
    ```

    Replace `/dev/sda` with the appropriate disk identifier as per your system configuration.

Follow any on-screen prompts and instructions provided by the installer to complete the installation process.

## Development

Ensure that you have [Devbox](https://www.jetify.com/devbox) installed on your system.

### Workflow

1. To run the dev container, execute the following command:

    ```
    devbox run container
    ```

2. To run Starship, execute the following command in the container shell:

    ```
    starship
    ```

3. To garbage collect the artifacts generated, execute the following command:

    ```
    devbox run gc
    ```

4. To terminate the container, press `Ctrl + A`, then `X`.

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE).
