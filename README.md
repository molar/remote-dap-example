# Remote dap example

Example of starting a debug session in nvim externally with a dynamic config, similar to what is possible with codelldb in vscode.

usage

```
# start your nvim editor with remote api
nvim --listen 127.0.0.1:1234

# from another terminal run this script with the binary as argument
./remote-dap.sh path/to/bin

```

adjust remote-dap.sh with the values you require.
