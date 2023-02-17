## This software would not be possible if it wasn't for 'hda-verb'.

## 'hda-verb' is not my software, I only wrote the 'hda-verb-fix' login program that utilises 'hda-verb'.

### Licensing.
'hda-verb' is licensed under the GNU GPLv2 and 'hda-verb-fix' is licensed under the OpenBSD License.

(see 'LICENSE' for further details)

### Installation instructions.
Place 'hda-verb' in the same directory as 'hda-verb-fix', ideally in 'Contents/MacOS'.

### How to compile 'hda-verb-fix' from source.

First you need the macOS terminal build-tools.

The quickest way to install these is just to run 'clang' and accept the agreement from Apple.

#### Compilation options.
'make' compiles the program.

'make install' copies the compiled program to the run directory.

'make clean' deletes the compiled program from the 'src' directory.

Quick example: 'make && make install'.

### 'Tested' hardware.
Dell Latitude 5290 (non 2-in-1).
