## Very fast to bootstrap a container vm environment

1. Sync repo before build, to fetch latest configs, data etc.
```
sh sync.sh
```
2. Build an image:
```
docker build --file {choose_machine_dockerfile} -t {name_your_vm} .

# example:

docker build --file Go.Dockerfile -t magrigor/goenv .
```
3. Create/run container based builded image:
```
docker run -ti {name_your_vm}

# example:

docker run -ti -v C:/Users/someuser/data:/home magrigor/goenv
```
4. Enjoy!
