## Very fast to bootstrap a container vm environment

Build an image:
```
docker build --file {choose_machine_dockerfile} -t {name_your_vm} .

# example:

docker build --file Archlinux.Dockerfile -t magrigor/archl .
```
Create/run container based builded image:
```
docker run -ti {name_your_vm}

# example:

docker run -ti -v C:/Users/someuser/data:/home magrigor/archl
```
Enjoy!
