Deploy
======

1. Clone this repo and go into the dir:

  ```bash
  $ git clone https://github.com/web-izmerenie/avtosv avtosv
  $ cd avtosv
  ```

2. Sync git-submodules:

  ```bash
  $ git submodule update --init
  ```

3. Install all dependencies and deploy by one command (also it will automatically runs deploy.sh):

  ```bash
  $ npm install
  ```

Start server
============

Just run this after deploy:

```bash
$ ./server.ls
```

Rebuilding front-end stuff
==========================

```bash
$ ./front-end-gulp
```

See more about that in `front-end-gulp` package info or do `./front-end-gulp --help` to show tasks list.

Also you can use just `npm install`, it will rebuild front-end stuff too with `--production` flag.
