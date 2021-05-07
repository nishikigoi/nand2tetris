#!/usr/bin/env python3

class SymbolTable():
    def __init__(self):
        self._class_tbl = {}
        self._sub_tbl = {}
        self._static_count = 0
        self._field_count = 0
        self._arg_count = 0
        self._var_count = 0

    def startSubroutine(self):
        self._sub_tbl = {}
        self._arg_count = 0
        self._var_count = 0

    def getClassTbl(self):
        return self._class_tbl

    def getSubTbl(self):
        return self._sub_tbl

    def define(self, name, _type, kind):
        if kind == 'STATIC':
            self._class_tbl[name] = {
                'type': _type,
                'kind': kind,
                'index': self._static_count,
            }
            self._static_count += 1
        elif kind == 'FIELD':
            self._class_tbl[name] = {
                'type': _type,
                'kind': kind,
                'index': self._field_count,
            }
            self._field_count += 1
        elif kind == 'ARG':
            self._sub_tbl[name] = {
                'type': _type,
                'kind': kind,
                'index': self._arg_count,
            }
            self._arg_count += 1
        elif kind == 'VAR':
            self._sub_tbl[name] = {
                'type': _type,
                'kind': kind,
                'index': self._var_count,
            }
            self._var_count += 1

    def varCount(self, kind):
        if kind == 'STATIC':
            return self._static_count
        elif kind == 'FIELD':
            return self._field_count
        elif kind == 'ARG':
            return self._arg_count
        elif kind == 'VAR':
            return self._var_count

    def kindOf(self, name):
        if name in self._sub_tbl.keys():
            return self._sub_tbl[name]['kind']
        elif name in self._class_tbl.keys():
            return self._class_tbl[name]['kind']
        else:
            return None

    def typeOf(self, name):
        if name in self._sub_tbl.keys():
            return self._sub_tbl[name]['type']
        elif name in self._class_tbl.keys():
            return self._class_tbl[name]['type']
        else:
            return None

    def indexOf(self, name):
        if name in self._sub_tbl.keys():
            return self._sub_tbl[name]['index']
        elif name in self._class_tbl.keys():
            return self._class_tbl[name]['index']
        else:
            return None
