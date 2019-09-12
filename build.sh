#!/usr/bin/env bash

set -x
set -eo pipefail

usage() {
    cat <<EOF
Usage: $0 -m macaddress -a apikey 
       -m      mac address of the machine
       -a      api key (token)
EOF
}


parse_args() {
    while getopts ":m:a:" opt; do
        case "${opt}" in
        m)
            macaddress=$OPTARG
            ;;
        a)
            apikey=$OPTARG
            ;;
        *)
            usage
            exit 1
            ;;
        esac
    done

    if [[ -z "${macaddress+x}" ]]; then
        usage >&2
        exit 1
    fi

    if [[ -z "${apikey+x}" ]]; then
        usage >&2
        exit 1
    fi

    export macaddress
    export apikey
    echo $apikey

}

main() {

#  export macaddress=${1}
#  export apikey=${2}
  parse_args "${@}"
  docker build --file Dockerfile --build-arg macaddress=$macaddress --build-arg apikey=$apikey --no-cache --rm .

}

main "$@"
