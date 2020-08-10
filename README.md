# APL notebooks [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Bubbler-4/apl-notebooks/master) [![Gitpod Ready-to-Code](https://img.shields.io/badge/Gitpod-ready--to--code-blue?logo=gitpod)](https://gitpod.io/#https://github.com/Bubbler-4/apl-notebooks)

APL Jupyter notebooks, runnable via Binder and Gitpod

## Features

* Docker images and configuration to run Jupyter notebook in...
    * Binder (interactive but can't save your own work)
    * Gitpod (gives you persistent workspace to work with)
* Comes with Dyalog APL 18.0 and associated Jupyter kernel
* HTML versions of the notebooks hosted on [GH Pages](https://bubbler-4.github.io/apl-notebooks/html)

## How to run in Binder

Just click the badge saying **launch binder** above.
You can browse the interactive notebooks and try out running your own program snippets, though you can't save it.

If you want to use this Binder setup for your own repo, add a `Dockerfile` with the following content:

```
FROM bubbler9903/apl-notebooks:1.01
COPY . ${HOME}
```

## How to run in Gitpod

Click on the **Gitpod: Ready-to-Code** badge above.
This way, you get your own persistent workspace, with Jupyter server running automatically whenever you open your workspace.

When the Jupyter server starts, the terminal will show you a URL like this:

```
http://localhost:8888/?token=49617885800479d1cf211cdcc72b409314a6ecc9cxxxxxx
```

Ctrl+click on the link to open the Jupyter page. It is for authentication process, so simply opening the page using Gitpod's links won't work.

If you quit the Jupyter server and have to restart, run the following command in the terminal:

```
./start_jupyter_gitpod.sh
```

If you want to reproduce the Gitpod setup on your own repo, copy the following three files. You shouldn't need to edit any files; otherwise, please let me know.

```
gitpod.Dockerfile
.gitpod.yml
start_jupyter_gitpod.sh
```
