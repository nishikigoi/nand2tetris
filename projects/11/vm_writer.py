#!/usr/bin/env python3

SEGMENT_MAP = {
    'CONST': 'constant',
    'ARG': 'argument',
    'LOCAL': 'local',
    'STATIC': 'static',
    'THIS': 'this',
    'THAT': 'that',
    'POINTER': 'pointer',
    'TEMP': 'temp',
}

class VMWriter():
    def __init__(self, path):
        self._f = open(path, 'w')

    def writePush(self, segment, index):
        line = 'push {} {}'.format(SEGMENT_MAP[segment], str(index))
        self._f.write(line + '\n')

    def writePop(self, segment, index):
        line = 'pop {} {}'.format(SEGMENT_MAP[segment], str(index))
        self._f.write(line + '\n')

    def writeArithmetic(self, command):
        line = command.lower()
        self._f.write(line + '\n')

    def writeLabel(self, label):
        line = 'label {}'.format(label)
        self._f.write(line + '\n')

    def writeGoto(self, label):
        line = 'goto {}'.format(label)
        self._f.write(line + '\n')

    def writeIf(self, label):
        line = 'if-goto {}'.format(label)
        self._f.write(line + '\n')

    def writeCall(self, name, nArgs):
        line = 'call {} {}'.format(name, str(nArgs))
        self._f.write(line + '\n')

    def writeFunction(self, name, nLocals):
        line = 'function {} {}'.format(name, str(nLocals))
        self._f.write(line + '\n')

    def writeReturn(self):
        line = 'return'
        self._f.write(line + '\n')

    def close(self):
        self._f.close()
