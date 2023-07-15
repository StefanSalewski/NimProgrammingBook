import std/strutils

const
  css = """
adoc.css
adoc-colony.css
adoc-foundation.css
adoc-foundation-lime.css
adoc-foundation-potion.css
adoc-github.css
adoc-golo.css
adoc-iconic.css
adoc-maker.css
adoc-readthedocs.css
adoc-riak.css
adoc-rocket-panda.css
adoc-rubygems.css
asciidoc-classic.css
asciidoctor.css
boot-cerulean.css
boot-cosmo.css
boot-cyborg.css
boot-darkly.css
boot-flatly.css
boot-journal.css
boot-lumen.css
boot-paper.css
boot-readable.css
boot-sandstone.css
boot-slate.css
boot-spacelab.css
boot-superhero.css
boot-yeti.css
clean.css
dark.css
fedora.css
gazette.css
italian-pop.css
material-amber.css
material-blue.css
material-brown.css
material-green.css
material-grey.css
material-orange.css
material-pink.css
material-purple.css
material-red.css
material-teal.css
medium.css
monospace.css
notebook.css
plain.css
template.css
tufte.css
ubuntu.css"""

  com = """
~/bin/asciidoctor -D output -a rouge-style=molokai -a stylesheet=css/$1 -o nimprogramming_$2.html nimprogramming.adoc"""

for s in css.split:
  let n = s[0 .. ^5]
  echo com % [s, n]

