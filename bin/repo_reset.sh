#!/bin/bash
{
        svn status --no-ignore | grep '^[I?]' | cut -c 9- | while IFS= read -r f; do rm -rf "$f"; done
        svn revert -R .
        git reset --hard

} 2>/dev/null
