#!/usr/bin/env python2
import hashlib,binascii
#Open  file containing strings to  NTLMify
f = open('passwords_sorted.txt', 'rU')
for line in f.readlines():
        hash = hashlib.new('md4', line.encode('utf-16le')).digest()
        print binascii.hexlify(hash)
