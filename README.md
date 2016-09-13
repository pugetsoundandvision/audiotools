# audiotools

Basic Descriptions and Usage:

UW Metaedit: A command line tool for automatic insertion of metadata into the bext-chunk of broadcast WAV files using the BWF Meta Edit tool (<a href="http://bwfmetaedit.sourceforge.net/Download/Mac_OS/">Download BWF MetaEdit CLI here</a>).
Usage: uwmetaedit [inputfile], configuration: uwmetaedit -e, generate external metadata: uwmetaedit -pb [inputfile]

AudioAIP: For a given WAV file, creates an archival package that adheres to the bagit standard with a mezzanine file, an access file, technical metadata and checksums.  This script includes an option to use a webcam to create pictures of the original item container that will be included in the archival package.  It also supports syncing of package/access copies to a remote or local location for easy backup. Usage: audioaip [inputfile], help: audioaip -h, photo mode: audioaip -p [input file], configuration for file sync: audioaip -e

