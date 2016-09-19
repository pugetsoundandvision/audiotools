# audiotools

So you digitized some audio and have a WAV file...now what?  These tools will take that WAV and get it ready for long term archiving and/or ingest into a repository such as Archivematica! By using these two tools together, your WAV file will be transfomed into an archival package conforming to current best practices.

To install and use these tools in Mac OSX, use the "Terminal" application located in the "Utilities" folder.
Use Terminal to [install Homebrew](http://brew.sh/) (if you don't have it already)  and then run the commands:

`brew tap pugetsoundandvision/pugetsoundandvision && brew install cask`

`brew cask install textmate && brew install audiotools`

This will install audiotools as well as Textmate, the text editor they rely on.

##Basic Descriptions and Usage:

**UW Metaedit**: A command line tool for automatic insertion of broadcast WAV metadata into WAV files using the BWF Meta Edit tool. To use first install the BWF MetaEdit CLI ([available here](http://bwfmetaedit.sourceforge.net/Download/Mac_OS/)).  Then customize your configuration file (by running uwmetaedit -e) with values to be written in the broadcast WAV file.  Other values such as time of creation will be embedded automatically.
Usage: uwmetaedit [inputfile], configuration: uwmetaedit -e, generate external metadata: uwmetaedit -pb [inputfile]

For metadata examples see [the examples section](https://github.com/pugetsoundandvision/audiotools/blob/master/bwfmetadataexamples.md)

For guidlines on metadata for broadcase WAV files, see the [FADGI guidelines](http://www.digitizationguidelines.gov/audio-visual/documents/Embed_Guideline_20120423.pdf)

**AudioAIP**: For a given WAV file, creates an archival package that adheres to the bagit standard with a mezzanine file, an access file, technical metadata and checksums.  Once installed, for instructions just type `audioaip` to see usage information.

This script includes an option to use a webcam to create pictures of the original item container that will be included in the archival package.  It also supports syncing of package/access copies to a remote or local location for easy backup.

Usage: `audioaip [inputfile]`, help: `audioaip -h`, photo mode: `audioaip -p [input file]`,configuration for file sync: `audioaip -e`


**License:** These tools are released under the [Unlicense](https://github.com/pugetsoundandvision/audiotools/blob/master/UNLICENSE.md).
