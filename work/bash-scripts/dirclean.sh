#!/bin/bash

# Gerardo Ocampos

# Simple dirclean /var

sudo find /var -name "*.log" -mtime +30 -delete
