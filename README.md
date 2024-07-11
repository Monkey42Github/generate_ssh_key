## SSH Key Generation Makefile
This repository contains a Makefile that automates the process of generating SSH keys and displaying them. The keys are stored in the standard SSH directory on Ubuntu (~/.ssh/).

## Usage
## Prerequisites
Ensure you have make and ssh-keygen installed on your system. These tools are usually available by default on most Unix-based systems.

## Steps
Clone the repository or download the Makefile to your local machine.

Navigate to the directory containing the Makefile in your terminal.

Run the default target to generate and display the SSH keys:

```sh
make
```
## Targets
- **all**
This is the default target. It depends on generate_key and display_keys, ensuring that the SSH keys are generated before they are displayed.

- **generate_key**
This target generates an SSH key pair (private and public keys) using ssh-keygen. The keys are stored in the ~/.ssh directory.

- **display_keys**
This target displays the contents of the generated private and public keys.

- **clean**
This target removes the generated SSH key files from the ~/.ssh directory.

## Example Usage
Generate and display the keys:

```sh
make
```

Clean up the generated key files:

```sh
make clean
```

## Note
Ensure to replace "votre_email@example.com" in the Makefile with your actual email address for the SSH key comment.

