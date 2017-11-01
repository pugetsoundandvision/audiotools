# BWF Metadata Examples
To configure the uwmetaedit script you will enter in data for three fields. When you first run uwmetaedit -e you will see a screen like this:

![Config Screen](https://github.com/pugetsoundandvision/audiotools/blob/master/supplemental/ConfigScreenExample.png)

After completing configuration you should end up with something along the lines of this:
![Config Screen](https://github.com/pugetsoundandvision/audiotools/blob/master/supplemental/ConfigExample.png)

The following are explanations and examples for the kind of information to include in these three fields. For more detailed information about recommended metadata see the [FADGI guidelines](http://www.digitizationguidelines.gov/audio-visual/documents/Embed_Guideline_20120423.pdf)

### Originator:
For this field use a unique identifier for your organization up to 32 characters.  This can be something like a [MARC organization code](https://www.loc.gov/marc/organizations/org-search.php). MARC codes can be requested [here](https://www.loc.gov/marc/organizations/form-eng.html).
FADGI guidelines call for a two character country code followed by a comma and space to be placed in front of this identifier.

_Examples:_ `originator="US, WaSeUMC"`, `originator="US, WaU"`

### History:
This field will fill the "Coding History" element of the BWF metadata.  Use it to record information about the creation of the WAV file.  The following is an example of a sample coding history with an annotated version.

`history="A=ANALOGUE,M=stereo,T=Ampex ATR-100; SN1221614; 7.5 ips; open reel tape`

`A=PCM,F=96000,W=24,M=stereo,T=Apogee; Symphony; SNA6M102130900000; A/D"`

![Coding History](https://github.com/pugetsoundandvision/audiotools/blob/master/supplemental/CodingHistoryExample.png)

### IARL
This field is the easiest!  Just set it so that it is the same as the Originator field!
