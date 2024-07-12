#!/usr/local/bin/bash

git submodule update grs
(cd grs && cargo rustdoc) || exit

declare -A item_names=(
	[fn]=Functions
	[constant]=Constants
	[enum]=Enums
	[struct]=Structs
	[type]="Type Aliases"
)

for mod in gr gks
do
	{
		printf "%s Reference\n------------------\n\n" "$mod"
		p=grs/target/doc/gr/$mod
		for itty in "${!item_names[@]}"
		do
			items=$(compgen -G "$p/$itty.*.html") || continue
			for f in $items
			do
				f=${f#*"$itty".}
				f=${f%.html}
				fmt=$([[ $itty == fn ]] && echo "$f()" || echo "$f")
				echo ".. |$mod.$itty.$f| replace:: \`\`gr::$fmt\`\`"
				echo ".. _$mod.$itty.$f: https://docs.rs/gr/latest/gr/$mod/$itty.$f.html"
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
