# audiotools
<p>So you digitized some audio and now have a WAV file...now what?  These tools will take that WAV and get it ready for long term archiving and/or ingest into a repository such as Archivematica! By using these two tools together, your WAV file will be transfomed into an archival package conforming to current best practices.</p> 
<p>To install and use these tools in Mac OSX, use the "Terminal" application located in the "Utilities" folder.
To install on OSX, use <a href="http://brew.sh/">Homebrew</a> and then run the commands:</p>
<p><code>brew tap pugetsoundandvision/pugetsoundandvision && brew install audiotools</code></p>

Basic Descriptions and Usage:

<b>UW Metaedit</b>: A command line tool for automatic insertion of broadcast WAV metadata into WAV files using the BWF Meta Edit tool. To use first install BWF MetaEdit (<a href="http://bwfmetaedit.sourceforge.net/Download/Mac_OS/">available here</a>).  Then customize your configuration file (by running uwmetaedit -e) with values to be written in the broadcast WAV file.  Other values such as time of creation will be embedded automatically.
Usage: uwmetaedit [inputfile], configuration: uwmetaedit -e, generate external metadata: uwmetaedit -pb [inputfile]
<p>For metadata examples see <a href="https://github.com/pugetsoundandvision/audiotools/blob/master/bwfmetadataexamples.md">examples</a></p>
<p>For guidlines on metadata for broadcase WAV files, see the <a href="http://www.digitizationguidelines.gov/audio-visual/documents/Embed_Guideline_20120423.pdf">FADGI guidelines</a> </p>

<b>AudioAIP</b>: For a given WAV file, creates an archival package that adheres to the bagit standard with a mezzanine file, an access file, technical metadata and checksums.  This script includes an option to use a webcam to create pictures of the original item container that will be included in the archival package.  It also supports syncing of package/access copies to a remote or local location for easy backup. Usage: audioaip [inputfile], help: audioaip -h, photo mode: audioaip -p [input file], configuration for file sync: audioaip -e

