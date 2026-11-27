# Zero-Trust SSH Onboarding

## What is SSH?
``` bash  SSH  protocol uses encryption to secure the connection between client and server.  ```

## What is zero trust?
```bash  a secure system that does not trust users even the logged in users thereby providing
more secure mechanisms to avoid social engineering incidences. ```

## Key-Pair: Public and Private Keys
### Public_key: 
    Copied to SSH server where server marks key as authorised.
### Private key:
    Remains with the users ONLY. It provides proof of identity for the Public key pair. 
    Referred to as identity keys.

## Setting Up Public Key Auth
###  1. Key Pair is created using ssh-keygen 
        a. options include: dsa, rsa, edsa
        b. -b determines the suggested size
    *passphrase is used for encrypting the key incase private key stolen
    ''' bash ssh -keygen -t rsa -b 4096 ```
###  2. Keep private key and send Public key to admin. sample.pub is added to authorised_keys_file in the server

### 3. Server allows access to anyone who can prove they have corresponding private key.


## Guide On How To Use Files
### Files contained in repo:
```bash
   1. 0-create_ssh_key_pair.sh
   2. 1-submit_public_key.sh
   3. 2-use_a_private_key.sh
   4. 3-ssh_config.sh
   5. 100-puppet_ssh_config.pp
```

### 0-create_ssh_key_pair.sh
```
This scripted file automates generation on SSH key-pair and stores them to a folder.
```

### 1-submit_public_key.sh
```
Scripted file to submit public key to server  admin for registration into a server. In this case school.pub
```
### 2-use_a_private_key.sh
```
This scripts has access to private key: school. It excecutes the school and logs users into the server without
requesting for password.
It requires a regsitered username and server ip.
```

### 3-ssh_config.sh
```
Config file streamline the workflow.
set permissions to 600: chmod 600 ./3-ssh_config && chmod  600 school
It automatically uses school key and rejects password auth.
To use config file from a folder other than root use -F option: ssh -F ./3-ssh_config school.

```

### 100-puppet_ssh_config.pp
```
This file ensures configuration file is set to private key and also enforces no password authentication.
```
More on SSH [SSH Docs](https://www.ssh.com/academy/ssh)
 
