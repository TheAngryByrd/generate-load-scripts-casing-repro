#!/usr/bin/env bash

mono .paket/paket.bootstrapper.exe
mono .paket/paket.exe restore
mono .paket/paket.exe generate-load-scripts --framework net462 --type fsx
