#!/usr/local/bin/bash

git submodule update grs
(cd grs && cargo rustdoc) || exit

declare -A item_names
item_names[fn]=Functions
item_names[constant]=Constants
item_names[enum]=Enums
item_names[struct]=Structs
item_names[type]="Type Aliases"

for mod in gr gks
do
	{
		printf "grs::%s Reference\n------------------\n\n" "$mod"
		p=../grs/target/doc/grs/$mod
		for itty in "${!item_names[@]}"
		do
			items=$(compgen -G "$p/$itty.*.html") || continue
			for f in $items
			do
				f=${f#*"$itty".}
				f=${f%.html}
				fmt=$([[ $itty == fn ]] && echo "$f()" || echo "$f")
				echo ".. |$mod.$itty.$f| replace:: \`\`gr::$fmt\`\`"
				echo ".. _$mod.$itty.$f: https://scientific-it-systems.iffgit.fz-juelich.de/grs/grs/$mod/$itty.$f.html"
			done
			printf "\n%s\n^^^^^^^^^^^^\n\n" "${item_names[$itty]}"
			for f in $items
			do
				f=${f#*"$itty".}
				f=${f%.html}
				echo "- |$mod.$itty.$f|_"
			done
			echo
		done
	} > src/rust-$mod.rst
done
