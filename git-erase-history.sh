SENSITIVE=$1
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch $SENSITIVE" --prune-empty --tag-name-filter cat -- --all
