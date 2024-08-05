#!/bin/bash

# Function to prompt for user input with validation
prompt_for_input() {
    local prompt_message=$1
    local input_variable=$2
    read -p "$prompt_message: " $input_variable
}

# Prompt for username
prompt_for_input "Enter the username" USERNAME

# Prompt for network
prompt_for_input "Enter the network or IP address" NETWORK

# Prompt if a private key is used
read -p "Do you have a private key for SSH access? (yes/no): " USE_KEY

if [[ "$USE_KEY" == "yes" ]]; then
    prompt_for_input "Enter the path to the private key file" PRIVATE_KEY
    KEY_OPTION="-i $PRIVATE_KEY"
else
    KEY_OPTION=""
fi

# Prompt if a password is required
read -p "Do you require a password for SSH access? (yes/no): " REQUIRES_PASSWORD

if [[ "$REQUIRES_PASSWORD" == "yes" ]]; then
    prompt_for_input "Enter the password" PASSWORD
    # Note: Using expect for password-based login
    SCRIPT=$(expect -c "
    set timeout -1
    spawn ssh $KEY_OPTION $USERNAME@$NETWORK
    expect {
        \"*yes/no*\" { send \"yes\r\"; exp_continue }
        \"*password:*\" { send \"$PASSWORD\r\" }
    }
    interact
    ")
    eval "$SCRIPT"
else
    # Simple SSH login without password
    ssh $KEY_OPTION $USERNAME@$NETWORK
fi
