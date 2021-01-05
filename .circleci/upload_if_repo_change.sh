#!/bin/bash
if ! git diff-index --quiet HEAD --; then
	git config user.name $CIRCLE_USERNAME
	git config user.email $CIRCLE_USERNAME
	git commit -m "upload binary"
	git push
fi