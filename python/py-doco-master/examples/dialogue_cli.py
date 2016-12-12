#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
    doco.examples.dialogue_cli
    ~~~~~~~~~~~~~~~~~~~~~~~~~~

    Example of clie application.


    :copyright: (c) 2014 Shinya Ohyanagi, All rights reserved.
    :license: BSD, see LICENSE for more details.
"""
import os
import sys
import code
import argparse
import logging
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from doco import DocoInterface
from doco.client import Client
from doco._compat import PY2


def write(msg):
    if PY2:
        msg = '\033[37m{0}\033[0m'.format(msg.encode('utf-8'))
    else:
        msg = '\033[37m{0}\033[0m'.format(msg)

    sys.stdout.write(msg)
    sys.stdout.write('\n')


class Console(code.InteractiveConsole):
    def __init__(self, local=None, filename='<console>'):
        code.InteractiveConsole.__init__(self, local, filename)
        self.client = None

    def push(self, line):
        res = self.client.send(utt=line, apiname='Dialogue')
        write(res['utt'])


def parse_option():
    """Parse options.

    ================= =========== ==============
    Options           Default     Description
    ================= =========== ==============
    -m, --mode        Dialogue    Chat to bot
    -k, --apikey      None        Api key
    -u, --utt         None        Utt
    -s, --shiritori   shiritori   Shiritori mode
    -t, --type        None        Character type
    ================= =========== ==============

    """
    description = 'NTT docomo api library.'
    parser = argparse.ArgumentParser(description=description, add_help=False)
    parser.add_argument('-m', '--mode', default='Dialogue')
    parser.add_argument('-k', '--apikey', default='6a614e6476706e76732f464c346a41374459777079305274687a2f612f713761757633695a413753306e42')
    parser.add_argument('-u', '--utt', default=None)
    parser.add_argument('-i', '--intaractive', const=True, default=False, nargs='?')
    parser.add_argument('-s', '--shiritori', const=True, default=False, nargs='?')
    parser.add_argument('-t', '--type', default=None)
    parser.add_argument('-vv', '--verbose', default=False, const=True, nargs='?')
    parser.add_argument('-c', '--constellations', default='獅子座')

    args = parser.parse_args()

    return args


def main():
    args = parse_option()
    apikey = args.apikey
    if apikey is None:
        #apikey = os.environ['DOCO_API_KEY']
        apikey = '6a614e6476706e76732f464c346a41374459777079305274687a2f612f713761757633695a413753306e42'
    if apikey is None:
        sys.exit(1)

    level = logging.INFO if args.verbose is True else logging.ERROR
    logging.basicConfig(level=level, format=DocoInterface.debug_log_format)

    shiritori = args.shiritori
    # options = {}
    options = {
            "user":"99999",
            "nickname":"yt",
            "nickname_y":"ワイティー",
            "sex":"男",
            "bloodtype":"A",
            "birthdateY":"1995",
            "birthdateM":"8",
            "birthdateD":"5",
            "age":"20",
            "constellations":"獅子座",
            "place":"東京",
            "mode":"dialog",
            "t":"20"
            }

    if shiritori is True:
        options['mode'] = 'srtr'
    if args.type is not None:
        options['t'] = args.type

    client = Client(apikey=apikey, user=options)
    if args.intaractive is False:
        if args.utt is None:
            sys.exit(1)
        res = client.send(utt=args.utt, apiname='Dialogue')
        write(str(res))
    else:
        console = Console()
        console.client = client
        sys.ps1 = '>>> '
        console.interact('Welcome to docomo dialogue cli.\n^D to exit.')


if __name__ == '__main__':
    main()


