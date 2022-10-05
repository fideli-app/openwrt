#!/bin/sh
CUSTOM_REPO_NAME=huafu

./scripts/feeds update -a -f
./scripts/feeds install -a

for pkg in feeds/"${CUSTOM_REPO_NAME}"/*; do
    if [ -d "${pkg}" ]; then
        name="$( basename "${pkg}" )"
        ./scripts/feeds uninstall "${name}"
        ./scripts/feeds install -f -p "${CUSTOM_REPO_NAME}" "${name}"
    fi
done
