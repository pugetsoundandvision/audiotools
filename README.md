# audiotools

Tools to help with archival audio workflows.
To install on OSX, use <a href="http://brew.sh/">Homebrew</a> and then run the commands:
<p><code>brew tap pugetsoundandvision/pugetsoundandvision && brew install audiotools</code></p>

Basic Descriptions and Usage:

UW Metaedit: A command line tool for automatic insertion of broadcast WAV metadata into WAV files using the BWF Meta Edit tool (<a href="http://bwfmetaedit.sourceforge.net/Download/Mac_OS/">Download BWF MetaEdit CLI here</a>).
Usage: uwmetaedit [inputfile], configuration: uwmetaedit -e, generate external metadata: uwmetaedit -pb [inputfile]
<p>For guidlines on metadata for broadcase WAV files, see the <a href="http://www.digitizationguidelines.gov/audio-visual/documents/Embed_Guideline_20120423.pdf">FADGI guidelines</a> 

AudioAIP: For a given WAV file, creates an archival package that adheres to the bagit standard with a mezzanine file, an access file, technical metadata and checksums.  This script includes an option to use a webcam to create pictures of the original item container that will be included in the archival package.  It also supports syncing of package/access copies to a remote or local location for easy backup. Usage: audioaip [inputfile], help: audioaip -h, photo mode: audioaip -p [input file], configuration for file sync: audioaip -e

