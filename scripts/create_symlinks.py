#!/usr/bin/python3
# Deploy all symlinks that needs to be created.

import os
import yaml
import argparse
import shutil

args = None
parser = argparse.ArgumentParser(description =\
            'Create symlinks for configuration.')
parser.add_argument('yamlfile', type=str,\
        help='Yaml file containing the definitions for the symlinks to set up')

parser.add_argument('--dryrun', action="store_true", \
        help="Dry run. Instead of creating symlinks, print the calls that would\
        be run using the configuration given.")

parser.add_argument('-v', action="store_true", help="Verbose mode")

def output (arg):
    if (args.v):
        print(arg)


def main():
   global args
   args = parser.parse_args()
   with open(args.yamlfile, 'r') as f:
      yml = yaml.safe_load(f)
      symlinks = yml.get('symlinks')
      for symlink in symlinks:
          source  = symlink.get('source')
          destinations = symlink.get('destinations')
          for destination in destinations:
              output('os.symlink_create ({0}, {1})'.format(str(source), str(destination)))



if __name__ == "__main__":
   main()

