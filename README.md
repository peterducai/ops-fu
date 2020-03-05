# ops-fu

automation/devops tool without dependencies

## Pros

* very easy syntax without complex identation
* 

# playbooks

```yaml
name: list files
command: ls
register: FILES

name: remove files
loop_command: rm -rf {{FILES}}

include: playbook2.yml

name: wait 5 seconds
wait: 5
```

there are only few rules

* tasks are separated by newline
* xxx

<!-- 
# fuvault

```sh
 Algo	key length	Block Size	Number of Rounds
AES-128	4	        4	        10
AES-192	6	        4	        12
AES-256	8	        4	        14
``` -->