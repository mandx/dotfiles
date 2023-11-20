It's necessary to install the Node-based servers in this `package.json` file:

```shell
# In this directory, where the `package.json` file is
$ npm install
```

Then we need to make the necessary executables available in `$PATH`:
```shell
$ ln -sfv ./node_modules/.bin/vscode-*-language-server ~/.local/bin/
$ ln -sfv ./node_modules/.bin/prettier ~/.local/bin/
```
