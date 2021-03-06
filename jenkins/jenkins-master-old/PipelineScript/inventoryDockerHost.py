#!/usr/bin/env python

'''
Example custom dynamic inventory script for Ansible, in Python.
'''

import os
import sys
import argparse

try:
    import json
except ImportError:
    import simplejson as json


class ExampleInventory(object):

 def __init__(self):
        self.inventory = {}
        self.read_cli_args()

        if self.args.list:
            self.inventory = self.empty_inventory()

        print json.dumps(self.inventory);

 def empty_inventory(self):
                return {
                        'group': {
                                'hosts': [172.17.0.1],
                        }
                }


 def read_cli_args(self):
                parser = argparse.ArgumentParser()
                parser.add_argument('--list', action = 'store_true')
                parser.add_argument('--host', action = 'store')
                self.args = parser.parse_args()


ExampleInventory()
