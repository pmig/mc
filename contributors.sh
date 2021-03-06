#!/bin/bash
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

# see also ".mailmap" for how email addresses and names are deduplicated

{
	cat <<-'EOH'
## Contributors
<!-- DO NOT EDIT - CONTRIBUTORS.md is autogenerated from git commit log by contributors.sh script. -->
	EOH
	echo
	git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf | sed 's/^/- /g'
} > CONTRIBUTORS.md
