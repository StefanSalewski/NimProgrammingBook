# sed 's/\(\[\.var\]#[^#]\+#\)/`\1`/'
# sed 's/\({[^}]\+}\)/`\1`/'

import strutils

const
  Tps = """
var
op
proc
term
code
func
const
lit
key
type
mod
str
obj
tup
mac
array"""

const
  Keywords = """
addr and as asm
bind block break
case cast concept const continue converter
defer discard distinct div do
elif else end enum except export
finally for from func
if import in include interface is isnot iterator
let
macro macros method methods mixin mod
nil not notin
object objects of or out
proc procs ptr
raise ref return
shl shr static
template templates try tuple  tuples type types
using
var
when while
xor
yield"""

#[
stdout.write "sed -i '"
for k in Keywords.split:
  #echo """sed -i 's/\({$1}\)/`\1`/'""" % k, " ?.adoc"
  stdout.write """s/\({$1}\)/\\`\1`/g;""" % k
#echo """s/@/@/'""", " nimprogramming.adoc"
echo """'""", " nimprog.adoc"

#echo """sed -i 's/\({[^}]\+}\)/`\1`/'""", " ?.adoc"
echo ""
]#

stdout.write "sed -i '"
for k in Tps.split:
  stdout.write """s/\(\[\.$1\]#[^#]\+#\)/\\`\1`/g;""" % k
echo """'""", " nimprog.adoc"

