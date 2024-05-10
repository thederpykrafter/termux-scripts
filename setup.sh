#!/bin/sh

echo "Setup storage [y|n]?"
read user_in

if [@user_in == "y" || $user_in == "Y"]; then
	termux-setup-storage
else
	echo "Storage setup skipped"
fi

echo "Change repo mirror? [y|n]?"
read user_in

if [@user_in == "y" || $user_in == "Y"]; then
	termux-change-repo
else
	echo "Repo change skipped"
fi
