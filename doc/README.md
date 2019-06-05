Nobilitas Core
=============

Setup
---------------------
Nobilitas Core is the original Nobilitas client and it builds the backbone of the network. It downloads and, by default, stores the entire history of Nobilitas transactions, which requires a few hundred gigabytes of disk space. Depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download Nobilitas Core, visit [bitcoincore.org](https://bitcoincore.org/en/download/).

Running
---------------------
The following are some helpful notes on how to run Nobilitas Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/nobilitas-qt` (GUI) or
- `bin/nobilitasd` (headless)

### Windows

Unpack the files into a directory, and then run nobilitas-qt.exe.

### macOS

Drag Nobilitas Core to your applications folder, and then run Nobilitas Core.

### Need Help?

* See the documentation at the [Nobilitas Wiki](https://en.nobilitas.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#nobilitas](http://webchat.freenode.net?channels=nobilitas) on Freenode. If you don't have an IRC client, use [webchat here](http://webchat.freenode.net?channels=nobilitas).
* Ask for help on the [NobilitasTalk](https://nobilitastalk.org/) forums, in the [Technical Support board](https://nobilitastalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build Nobilitas Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [FreeBSD Build Notes](build-freebsd.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide (External Link)](https://github.com/nobilitas-core/docs/blob/master/gitian-building.md)

Development
---------------------
The Nobilitas repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/nobilitas/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [NobilitasTalk](https://nobilitastalk.org/) forums, in the [Development & Technical Discussion board](https://nobilitastalk.org/index.php?board=6.0).
* Discuss project-specific development on #nobilitas-core-dev on Freenode. If you don't have an IRC client, use [webchat here](http://webchat.freenode.net/?channels=nobilitas-core-dev).
* Discuss general Nobilitas development on #nobilitas-dev on Freenode. If you don't have an IRC client, use [webchat here](http://webchat.freenode.net/?channels=nobilitas-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [nobilitas.conf Configuration File](nobilitas-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
