# audiotools

Tools to help with archival audio workflows.  To install and use these tools in Mac OSX, use the "Terminal" application located in the "Utilities" folder.
To install on OSX, use <a href="http://brew.sh/">Homebrew</a> and then run the commands:
<p><code>brew tap pugetsoundandvision/pugetsoundandvision && brew install audiotools</code></p>

Basic Descriptions and Usage:

<b>UW Metaedit</b>: A command line tool for automatic insertion of broadcast WAV metadata into WAV files using the BWF Meta Edit tool. To use first install BWF MetaEdit (<a href="http://bwfmetaedit.sourceforge.net/Download/Mac_OS/">available here</a>).  Then customize your configuration file (by running uwmetaedit -e) with values to be written in the broadcast WAV file.  Other values such as time of creation will be embedded automatically.
Usage: uwmetaedit [inputfile], configuration: uwmetaedit -e, generate external metadata: uwmetaedit -pb [inputfile]
<p>For guidlines on metadata for broadcase WAV files, see the <a href="http://www.digitizationguidelines.gov/audio-visual/documents/Embed_Guideline_20120423.pdf">FADGI guidelines</a> 

<b>AudioAIP</b>: For a given WAV file, creates an archival package that adheres to the bagit standard with a mezzanine file, an access file, technical metadata and checksums.  This script includes an option to use a webcam to create pictures of the original item container that will be included in the archival package.  It also supports syncing of package/access copies to a remote or local location for easy backup. Usage: audioaip [inputfile], help: audioaip -h, photo mode: audioaip -p [input file], configuration for file sync: audioaip -e

