#!/usr/bin/env python
import logging as l
import subprocess


class ShellError(Exception):
    pass


def sh(args):
    proc = sh_(args)
    if proc.returncode == 0:
        return proc.stdout
    else:
        raise ShellError(
            f"'{args}' returned '{proc.returncode}' and stderr='{proc.stderr}'"
        )


def sh_(args):
    proc = subprocess.run(args, shell=True, text=True, capture_output=True)
    return proc


__all__ = ["sh", "sh_", "l", "system"]
