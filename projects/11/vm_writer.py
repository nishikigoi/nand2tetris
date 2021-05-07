#!/usr/bin/env python3

class VMWriter():
    def __init__(self, path):
        self._f = open(path, 'w')

    def writePush(segment, index):
        line = 'push {} {}'.format(segment.lower(), str(index))
        self._f.write(line)

    def writePop(segment, index):
        line = 'pop {} {}'.format(segment.lower(), str(index))
        self._f.write(line)

    def writeArithmetic(command):
        line = command.lower()
        self._f.write(line)

    def writeLabel(label):
        line = 'label {}'.format(label.lower())
        self._f.write(line)

    def writeGoto(label):
        line = 'goto {}'.format(label.lower())
        self._f.write(line)

    def writeIf(label):
        line = 'if-goto {}'.format(label.lower())
        self._f.write(line)

    def writeCall(name, nArgs):
        line = 'call {} {}'.format(name, str(nArgs))
        self._f.write(line)

    def writeFunction(name, nLocals):
        line = 'function {} {}'.format(name, str(nLocals))
        self._f.write(line)

    def writeReturn():
        line = 'return'
        self._f.write(line)

    def close():
        self._f.close()
