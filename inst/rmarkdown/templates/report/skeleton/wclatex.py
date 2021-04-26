#!/usr/bin/python
# Requirements for UoL: Excluding contents, abstract, acknowledgements, bibliography and appendices
import os.path
import re
import sys

if (len(sys.argv) == 3) and (sys.argv[1] == "-v"):
  sys.argv[1] = sys.argv[2]
elif len(sys.argv) != 2:
  print("Usage: wclatex [-v] <file.tex>")
  sys.exit(1)

if not(os.path.isfile(sys.argv[1])):
  print("Path does not exist or is not a file: " + sys.argv[1])
  sys.exit(1)

comment = re.compile(r"\%.*")
markup = re.compile(r"\\(?:emph|textbf)\{(.*?)\}")

figure = re.compile(r"\\begin{figure}.*?\\end{figure}")
table = re.compile(r"\\begin{table}.*?\\end{table}")
mathal = re.compile(r"\\begin{aligned}.*?\\end{aligned}")
math = re.compile(r"\${1,2}.+?\${1,2}")
commands = re.compile(r"\\\w+((\*)?\{.*?\})*")
numbers = re.compile(r"\d+(.\d*)?")
nonwords = re.compile(r"\s\W+\s")

c = open(sys.argv[1]).read()
bstring = r"\chapter{Introduction}"
b = c.find(bstring)
e = c.find(r"\bibliographystyle{")

if (b == -1) or (e == -1):
  print("Not a valid LaTeX file")
  sys.exit(1)

c = c[b+len(bstring):e]

c = comment.sub("", c)
c = c.replace("\n", " ")
c = c.replace("/", " ");
c = c.replace("-", "") # or space!?

# TODO test
c = figure.sub("", c)
c = table.sub("", c)
c = markup.sub(r"\1", c)
c = math.sub("", c)
c = mathal.sub("", c)
c = commands.sub("", c)
c = numbers.sub("", c)
c = nonwords.sub(" ", c)

if len(sys.argv) == 3:
  print(c)

wc = len(c.split())
print(wc)
