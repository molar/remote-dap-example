#!/bin/bash
set -x

CONFIG=$(cat << EOF
:lua require('dap').run({ \
  name = "asdf", \
  type = "lldb", \
  request = "launch", \
  program = "\${workspaceFolder}/bazel-bin/test/test_cgroupsv2", \
  cwd = '\${workspaceFolder}', \
  sourceMap = { { ".", "\${workspaceFolder}" } }, \
  stopOnEntry = false, \
  runInTerminal = false,\
})<CR>
EOF
)

echo $CONFIG


nvim --server 127.0.0.1:1234 --remote-send "${CONFIG}"
