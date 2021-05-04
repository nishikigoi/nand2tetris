#!/usr/bin/env python3

import re
import sys

TOKEN_TYPE_MAP = {
    'KEYWORD': 'keyword',
    'SYMBOL': 'symbol',
    'IDENTIFIER': 'identifier',
    'INT_CONST': 'integerConstant',
    'STRING_CONST': 'stringConstant',
}

KEYWORDS = [
    'class',
    'constructor',
    'function',
    'method',
    'field',
    'static',
    'var',
    'int',
    'char',
    'boolean',
    'void',
    'true',
    'false',
    'null',
    'this',
    'let',
    'do',
    'if',
    'else',
    'while',
    'return',
]

SYMBOLS = [
    '{',
    '}',
    '(',
    ')',
    '[',
    ']',
    '.',
    ',',
    ';',
    '+',
    '-',
    '*',
    '/',
    '&',
    '|',
    '<',
    '>',
    '=',
    '~',
]

class JackTokenizer():
    def __init__(self, path):
        with open(path, 'r') as f:
            self._tokens = []
            self._iter = iter(self._tokens)
            self._index = 0
            for line in f:
                end = line.find('//') if line.find('//') != -1 else len(line)
                line = line[:end].strip()
                if line.startswith('/*') or line.startswith('* ') or line.startswith('*/'):
                    continue
                if line:
                    self._tokenize(line)

    def _tokenize(self, line):
        quotes_splitted = line.split('"')
        tokens = []
        for i in range(len(quotes_splitted)):
            if i % 2 == 0:
                for s in quotes_splitted[i].split(' '):
                    for t in re.split('([\(\)\[\]\{\}\.,;\+\-=\*\/&\|~<>])', s):
                        if t in KEYWORDS:
                            token_type = 'KEYWORD'
                        elif t in SYMBOLS:
                            token_type = 'SYMBOL'
                        elif t.isdigit():
                            token_type = 'INT_CONST'
                        else:
                            token_type = 'IDENTIFIER'
                        tokens.append((t, token_type))
            else:
                tokens.append((quotes_splitted[i], 'STRING_CONST'))
        for token in tokens:
            if token[0]:
                self._tokens.append(token)

    def hasMoreTokens(self):
        return self._index < len(self._tokens)

    def advance(self):
        if self.hasMoreTokens():
            self._token = next(self._iter)
            self._index += 1

    def tokenType(self):
        return self._token[1]

    def keyWord(self):
        assert self._token[1] == 'KEYWORD'
        return self._token[0].upper()

    def symbol(self):
        assert self._token[1] == 'SYMBOL'
        return self._token[0]

    def identifier(self):
        assert self._token[1] == 'IDENTIFIER'
        return self._token[0]

    def intVal(self):
        assert self._token[1] == 'INT_CONST'
        return int(self._token[0])

    def stringVal(self):
        assert self._token[1] == 'STRING_CONST'
        return self._token[0]


def main():
    input = sys.argv[1]
    tokenizer = JackTokenizer(input)
    output = input.replace('.jack', 'T.xml')
    lines = []
    with open(output, 'w') as f:
        lines.append('<tokens>')
        while tokenizer.hasMoreTokens():
            tokenizer.advance()
            token_type = tokenizer.tokenType()
            tag = TOKEN_TYPE_MAP[token_type]
            tag_begin = '<{}>'.format(tag)
            tag_end = '</{}>'.format(tag)
            if token_type == 'KEYWORD':
                word = tokenizer.keyWord().lower()
            elif token_type == 'SYMBOL':
                word = tokenizer.symbol()
                if word == '<':
                    word = '&lt;'
                elif word == '>':
                    word = '&gt;'
                elif word == '&':
                    word = '&amp;'
            elif token_type == 'IDENTIFIER':
                word = tokenizer.identifier()
            elif token_type == 'INT_CONST':
                word = str(tokenizer.intVal())
            elif token_type == 'STRING_CONST':
                word = tokenizer.stringVal()
            lines.append(' '.join([tag_begin, word, tag_end]))
        lines.append('</tokens>')
        for line in lines:
            f.write(line + '\n')

if __name__ == "__main__":
    main()
