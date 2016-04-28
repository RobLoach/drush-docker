#!/bin/bash
#
# Usage: ./update.sh x.y.z
#
# This script runs to create a Dockerfile for a new Drush version.
# If you specify a partial version, like '8' or '8.0', it will determine the most recent sub version like 8.0.1.
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

versions=( "$@" )
if [ ${#versions[@]} -eq 0 ]; then
	echo "Usage: bash update.sh [version ...]"
	exit 1
fi
versions=( "${versions[@]%/}" )

function write_files {
	local full_version=$1
	local variant=$2

	short_version=$(echo $full_version | sed -r -e 's/^([0-9]+).*/\1/')
	if [[ -z $variant ]]; then
		target_dir="$short_version"
		template=Dockerfile.template
	else
		target_dir="$short_version/$variant"
		template=Dockerfile-$variant.template
	fi

	mkdir -p "$target_dir"
	cp $template "$target_dir/Dockerfile"
	if [[ -f docker-entrypoint.sh ]]; then
		cp -r docker-entrypoint.sh "$target_dir"
	fi
	sed -r -i -e 's/^(ENV DRUSH_VERSION) .*/\1 '"$full_version"'/' "$target_dir/Dockerfile"
}

tags="$(git ls-remote --tags https://github.com/drush-ops/drush.git | cut -d/ -f3 | cut -d^ -f1 | cut -dv -f2 | sort -rV)"

for version in "${versions[@]}"; do
	possible_versions="$(echo "$tags" | grep "^$version" )"
	if release_versions="$(echo "$possible_versions" | grep -vEm1 '\-alpha|\-beta')"; then
		full_version="$release_versions"
	else
		full_version="$(echo "$possible_versions" | head -n1)"
	fi

	if [[ -z $full_version ]]; then
		echo "Cannot find version: $version"
		exit 1
	fi
	(
		set -x
		write_files $full_version
		write_files $full_version 'alpine'
	)
done
