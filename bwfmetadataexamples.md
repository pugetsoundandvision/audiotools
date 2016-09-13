<p><b>BWF Metadata Examples</b></p>
<p> To configure the uwmetaedit script you will enter in data for three fields. When you first run uwmetaedit -e you will see a screen like this</p>
<img src="https://github.com/pugetsoundandvision/audiotools/blob/master/ConfigScreenExample.png" alt="configexample">
<p>The following are explanations and examples for the kind of information to include in these three fields. For more detailed information about recommended metadata see the <a href="http://www.digitizationguidelines.gov/audio-visual/documents/Embed_Guideline_20120423.pdf">FADGI guidelines</a></p>
<p>Originator:</p>
<p>For this field use a unique identifier for your organization up to 32 characters.  This can be something like a <a href="https://www.loc.gov/marc/organizations/org-search.php">MARC organization code</a>. MARC codes can be requested <a href="https://www.loc.gov/marc/organizations/form-eng.html">here.</a></p>
<p><i>Examples:</i> originator="US,WaSeUMC", originator="US,WaU"</p>
<p>History:</p>
<p>This field will fill the "Coding History" element of the BWF metadata.  Use it to record information about the creation of the WAV file.  The following is an example of a sample coding history with an annotated version.</p>
<p>history="A=ANALOGUE,M=stereo,T=Ampex ATR-100; SN1221614; 7.5 ips; open reel tape A=PCM,F=96000,W=24,M=stereo,T=Apogee; Symphony; SNA6M102130900000; A/D"</p>
<img src="https://github.com/pugetsoundandvision/audiotools/blob/master/CodingHistoryExample.png" alt="example">

<p>IARL</p>
<p>This field is the easiest!  Just set it so that it is the same as the Originator field!</p>
