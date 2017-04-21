# audiotools

So you digitized some audio and have a WAV file...now what?  These tools will take that WAV and get it ready for long term archiving and/or ingest into a repository such as Archivematica! By using these two tools together, your WAV file will be transfomed into an archival package conforming to current best practices.

To install and use these tools in Mac OSX, use the "Terminal" application located in the "Utilities" folder.
Use Terminal to [install Homebrew](http://brew.sh/) (if you don't have it already)  and then run the commands:

`brew tap pugetsoundandvision/pugetsoundandvision && brew install cask`

`brew install audiotools`

Audiotools depends on having textmate and bwfmetaedit installed.  It will attempt to install these automatically.  If for some reason this doesn't work, you can install them via:

Textmate: `brew cask install textmate`

BWF MetaEdit CLI: ([Download here](http://bwfmetaedit.sourceforge.net/Download/Mac_OS/))

##Basic Descriptions and Usage:

**UW Metaedit**: A command line tool for automatic insertion of broadcast WAV metadata into WAV files using the BWF Meta Edit tool. To use, first customize your configuration file (by running uwmetaedit -e) with values to be written in the broadcast WAV file.  Other values such as time of creation will be embedded automatically.
Usage: `uwmetaedit [inputfile]`, Configuration: `uwmetaedit -e`, Generate external metadata: `uwmetaedit -p [inputfile]`, Help: `uwmetaedit -h`, Enable Overwrite (not recommended): `uwmetaedit -o [inputfile]`.

**For configuration instructions and metadata examples see [the examples section](https://github.com/pugetsoundandvision/audiotools/blob/master/supplemental/bwfmetadataexamples.md).**

For guidlines on metadata for broadcase WAV files, see the [FADGI guidelines](http://www.digitizationguidelines.gov/audio-visual/documents/Embed_Guideline_20120423.pdf)

---

**AudioAIP**: For a given WAV file, creates an archival package that adheres to the bagit standard with a mezzanine file, an access file, technical metadata and checksums.  Once installed, for instructions just type `audioaip` to see usage information.

This script includes an option to use a webcam to create pictures of the original item container that will be included in the archival package.  It also supports syncing of package/access copies to a remote or local location for easy backup.

Usage: `audioaip [inputfile]`, help: `audioaip -h`, photo mode: `audioaip -p [input file]`, set up configuration for options `audioaip -e`

**AudioAIP Configuration:**

When you run `audioaip -e` you will see a configuration screen like this:
![AudioAIP Config](https://github.com/pugetsoundandvision/audiotools/blob/master/supplemental/audioaipconfig.png)

To set your options, simply type them between the respective quotation marks, save the file and quit.

The options require file paths.  An easy way to find the file path for a file or folder is just to drag it into the terminal window and then copy the results. It should looks something like `/Users/username/Desktop/myfolder`

* The first option is to enable synchronizing your preservation package to a second location.  Enable this by entering "Y" and a path (or ssh path) for a destination.  Something like: `sync_choice="Y"` and `destination="path to your folder here"`
* The second option allows you to set a location to make an extra copy of your access files (in addition to the ones contained in your package).  This enables you to have copies of all access files added to one central folder for more easy management. Enable this by entering "Y" and a path (or ssh path) for a destination.  Something like: `derivative_choice="Y"` and `destination="path to your folder here"`
* The third option allows you to create a second access copy and attach an extra piece of audio (such as a copyright statement).  Enable this by entering the path for the audio file you would like to append to the access copy.  Something like `copyright_location="path to your audio file here"`

## Licenses

Scripts

audiotools scripts are licensed under a [BSD 3-Clause License](https://github.com/pugetsoundandvision/audiotools/blob/master/LICENSE)

Documentation

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />All associated documentation for the audiotools scripts are licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a> unless otherwise noted.

BWF Metaedit

>This code was created in 2010 for the Library of Congress and the other federal government agencies participating in the Federal Agencies Digitization Guidelines Initiative and it is in the public domain.

Detailed BWF Metaedit License available [here](https://mediaarea.net/BWFMetaEdit/License).
