# ops-fu

automation/devops tool without dependencies


# fuvault

 Algo	key length	Block Size	Number of Rounds
AES-128	4	        4	        10
AES-192	6	        4	        12
AES-256	8	        4	        14


# playbooks

```yaml
name: list files
command: ls
register: FILES

name: remove files
loop_command: rm -rf {{FILES}}

```