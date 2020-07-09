#!/bin/bash
mkdir ~/src
bash=$(<~/.bashrc)
if grep -q "src ~/src/.aliases" <<< "$bash";
then
	echo "aliases is ready"
else
	echo "src ~/src/.aliases" >> ~/.bashrc
	echo 'aliases is good'
fi
if grep -q "src ~/src/fancy_tools.sh" <<< "$bash";
then
	echo "fancy tools instaled"
else
	echo "src ~/src/fancy_tools.sh" >> ~/.bashrc
	echo 'fancy tools ready'
fi

if [ -d "~/bin" ]
then
	cp ~/src/bin/updateFancyTools ~/bin/updateFancyTools
else
	mkdir ~/bin
	export PATH=$PATH:$HOME/bin
	cp ~/src/bin/updateFancyTools ~/bin/updateFancyTools
fi

