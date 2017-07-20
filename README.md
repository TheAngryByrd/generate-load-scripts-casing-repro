# generate-load-scripts-casing

generate-load-scripts has problems with casing.  This doesn't really affect Windows or macOS since they don't care, but this really affects anything linux related.  


Repro:

```
./startDocker.sh
```

Paket exits with
```
Successfully built b8141a6c0e20
Checking Paket version (downloading latest stable)...
Paket.exe 5.79.3 is up to date.
Paket version 5.79.3
Downloading Foq 1.7.2 (tests)
Performance:
 - Disk IO: 78 milliseconds
 - Average Download Time: 399 milliseconds
 - Number of downloads: 1
 - Average Request Time: 429 milliseconds
 - Number of Requests: 2
 - Runtime: 1 second
Paket version 5.79.3
Performance:
 - Runtime: 846 milliseconds
Paket failed with
-> DirectoryNotFoundException: Could not find a part of the path "/app/packages/tests/Foq/lib/net45/Foq.dll".
```

if you look closely at the file path it's

```
packages/tests/Foq/Lib/net45/Foq.dll
```

`Lib` is capitalized on the file system but paket is looking for 'lib`