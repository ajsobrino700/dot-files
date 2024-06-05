
import sys
import os

repository = sys.argv[1]
path = os.listdir("./")

if not "Makefile" in path:
    if  "git@gitlab.feedzai.com" in repository:
        sys.exit(1)
    else:
        print("There is not makefile in the repository")
