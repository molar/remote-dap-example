#!/bin/bash
BINARY_TO_DEBUG=$1
CONFIG=$(cat << EOF
:lua require('dap').run({ \
  type = "lldb", \
  request = "launch", \
  program = "\${workspaceFolder}/${BINARY_TO_DEBUG}", \
  cwd = '\${workspaceFolder}', \
  sourceMap = { { ".", "\${workspaceFolder}" } }, \
  stopOnEntry = false, \
  runInTerminal = false,\
})<CR>
EOF
)

echo $CONFIG


nvim --server 127.0.0.1:1234 --remote-send "${CONFIG}"
