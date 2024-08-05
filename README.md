# SSH Login Assistant Script

## Description

The `ssh_login_assistant.sh` script is a convenient tool designed to streamline the process of connecting to an SSH server. It simplifies the setup by guiding you through the required steps, including entering your username, selecting the network, and handling private key or password authentication. This script is ideal for users who frequently need to connect to different SSH servers and want to automate the process for efficiency and ease.

## Features

- **Prompt for Username**: Enter the SSH username.
- **Select Network**: Specify the network for connection.
- **Handle Private Key**: Provide a path to the private key if used for authentication.
- **Password Option**: Choose to enter a password if needed.
- **Automatic SSH Login**: Connects to the specified SSH server using the provided credentials.

## Prerequisites

Before using this script, ensure you have the following:

- **Bash Shell**: The script is designed to be executed in a Bash shell.
- **SSH Client**: Make sure the `ssh` command is available on your system.
- **Permissions**: Ensure the script file has execution permissions.

## Installation

1. **Download the Script**:

   Save the script to your local machine. You can download it using `wget` or `curl`, or simply create a new file and copy the script contents into it.

   ```bash
   wget https://example.com/path/to/script.sh -O ssh_login_assistant.sh
   ```

2. **Make the Script Executable**:

   Change the file permissions to make the script executable.

   ```bash
   chmod +x ssh_login_assistant.sh
   ```

## Usage

1. **Run the Script**:

   Execute the script from your terminal.

   ```bash
   ./ssh_login_assistant.sh
   ```

2. **Follow the Prompts**:

   - **Username**: Enter the SSH username when prompted.
   - **Network**: Specify the network (e.g., `192.168.1.0/24` or `home_network`).
   - **Private Key**: If you use a private key for authentication, provide the path to the key file. If not, skip this step.
   - **Password**: If your SSH server requires a password, choose `yes` and enter the password when prompted. Otherwise, choose `no`.

3. **Automatic Connection**:

   The script will attempt to connect to the specified SSH server using the provided details.

## Example

Here's how the interaction might look when you run the script:

```bash
$ ./ssh_login_assistant.sh
Enter your SSH username: johndoe
Enter the network you are on: 192.168.1.0/24
Do you have a private key for SSH authentication? (yes/no): yes
Enter the path to your private key: /path/to/private_key
Do you require a password for SSH authentication? (yes/no): no
Connecting to SSH server...
```

## Troubleshooting

- **Permission Denied**: Ensure the script has execution permissions (`chmod +x ssh_login_assistant.sh`).
- **SSH Client Missing**: Install the SSH client package for your OS.
- **Invalid Private Key Path**: Verify the path to the private key is correct.

## Contributing

Feel free to fork the repository, submit issues, or create pull requests to improve the script.

## Author
**Purva Patel**
