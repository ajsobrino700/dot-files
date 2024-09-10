#! /usr/bin/python3

import sys
import subprocess
import re

message = ""
config_message_file = sys.argv[1]

with open(config_message_file, "r") as f:
    message = f.read()
branch_name = ""
branch = subprocess.run("git rev-parse --abbrev-ref HEAD".split(), capture_output=True)
if branch.returncode != 0:
    print("Problem to get the name of branch")
else:
    branch_name = branch.stdout.decode().replace("\n", "")
match = re.match("^(feature|bugfix|hotfix)\\/(DT\\-\\d+)\\-[\\w\\-\\d]+$", branch_name)

if match:
    message = match.group(2) + ": " + message

with open(config_message_file, "w") as f:
    f.write(message)
