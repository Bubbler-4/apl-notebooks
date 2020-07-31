# APL notebooks [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/Bubbler-4/apl-notebooks/master)

APL Jupyter notebooks, runnable via Binder and Gitpod

## How to run in Binder

Just click the button saying **launch binder** above.
You can browse the interactive notebooks and try out running your own program snippets, though you can't save it.

## How to run in Gitpod

If you have Gitpod browser extension installed, click on the **Gitpod** button on the main page of this repo.
Otherwise, [click on this link](https://gitpod.io/#https://github.com/Bubbler-4/apl-notebooks).
This way, you get your own persistent workspace, with Jupyter server running automatically.

When the Jupyter server starts, the console will show you a URL like this:

```
http://localhost:8888/?token=49617885800479d1cf211cdcc72b409314a6ecc9cxxxxxx
```

Ctrl+click on the link to open the Jupyter page. It is for authentication process, so simply opening the page using Gitpod's links won't work.

If you need to quit Jupyter server and restart, run the following command:

```
./start_jupyter_gitpod.sh
```
