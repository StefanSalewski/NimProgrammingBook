import strutils
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
macro method mixin mod
nil not notin
object of or out
proc ptr
raise ref return
shl shr static
template try tuple type
using
var
when while
xor
yield
"""

const
  Tps = """
int
int8
int16
int32
uint
uint8
uint16
uint32
float
float32
float64
array
seq
object
tuple
string
"""

for k in Keywords.split:
  echo ":$1: pass:q[[.key]#$1#]" % k

for k in Tps.split:
  echo ":$1: pass:q[[.type]#$1#]" % k

