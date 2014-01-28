package Faker::Provider::File;

use 5.14.0;
use feature 'unicode_strings';
use Moo;
use Function::Parameters;

with 'Faker::Role::Data';
with 'Faker::Role::Provider';

method mime_type {
    my $data = $self->data;
    return $self->random_item(@{$data->{mime_type_data}});
}

method file_extension {
    my $data = $self->data;
    return $self->random_item(@{$data->{file_extension_data}});
}

1;

__DATA__

@@ file_extension_data
application/atom+xml
application/ecmascript
application/emma+xml
application/epub+zip
application/java-archive
application/java-vm
application/javascript
application/json
application/jsonml+json
application/lost+xml
application/mathml+xml
application/mets+xml
application/mods+xml
application/mp4
application/msword
application/octet-stream
application/ogg
application/omdoc+xml
application/pdf
application/pgp-encrypted
application/pgp-signature
application/pkix-pkipath
application/pkixcmp
application/pls+xml
application/postscript
application/pskc+xml
application/rdf+xml
application/reginfo+xml
application/rss+xml
application/rtf
application/sbml+xml
application/vnd.adobe.air-application-installer-package+zip
application/vnd.adobe.xdp+xml
application/vnd.adobe.xfdf
application/vnd.ahead.space
application/vnd.dart
application/vnd.data-vision.rdz
application/vnd.dece.data
application/vnd.dece.ttml+xml
application/vnd.dece.unspecified
application/vnd.dece.zip
application/vnd.denovo.fcselayout-link
application/vnd.dna
application/vnd.dolby.mlp
application/vnd.dpgraph
application/vnd.dreamfactory
application/vnd.ds-keypoint
application/vnd.dvb.ait
application/vnd.dvb.service
application/vnd.dynageo
application/vnd.ecowin.chart
application/vnd.enliven
application/vnd.epson.esf
application/vnd.epson.msf
application/vnd.epson.quickanime
application/vnd.epson.salt
application/vnd.epson.ssf
application/vnd.ezpix-album
application/vnd.ezpix-package
application/vnd.fdf
application/vnd.fdsn.mseed
application/vnd.fdsn.seed
application/vnd.flographit
application/vnd.fluxtime.clip
application/vnd.hal+xml
application/vnd.hydrostatix.sof-data
application/vnd.ibm.minipay
application/vnd.ibm.secure-container
application/vnd.iccprofile
application/vnd.igloader
application/vnd.immervision-ivp
application/vnd.kde.karbon
application/vnd.kde.kchart
application/vnd.kde.kformula
application/vnd.kde.kivio
application/vnd.kde.kontour
application/vnd.kde.kpresenter
application/vnd.kde.kspread
application/vnd.kde.kword
application/vnd.kenameaapp
application/vnd.kidspiration
application/vnd.kinar
application/vnd.koan
application/vnd.kodak-descriptor
application/vnd.las.las+xml
application/vnd.llamagraphics.life-balance.desktop
application/vnd.llamagraphics.life-balance.exchange+xml
application/vnd.lotus-1-2-3
application/vnd.lotus-approach
application/vnd.lotus-freelance
application/vnd.lotus-notes
application/vnd.lotus-organizer
application/vnd.lotus-screencam
application/vnd.mozilla.xul+xml
application/vnd.ms-artgalry
application/vnd.ms-cab-compressed
application/vnd.ms-excel
application/vnd.ms-excel.addin.macroenabled.12
application/vnd.ms-excel.sheet.binary.macroenabled.12
application/vnd.ms-excel.sheet.macroenabled.12
application/vnd.ms-excel.template.macroenabled.12
application/vnd.ms-fontobject
application/vnd.ms-htmlhelp
application/vnd.ms-ims
application/vnd.ms-lrm
application/vnd.ms-officetheme
application/vnd.ms-pki.seccat
application/vnd.ms-pki.stl
application/vnd.ms-powerpoint
application/vnd.ms-powerpoint.addin.macroenabled.12
application/vnd.ms-powerpoint.presentation.macroenabled.12
application/vnd.ms-powerpoint.slide.macroenabled.12
application/vnd.ms-powerpoint.slideshow.macroenabled.12
application/vnd.ms-powerpoint.template.macroenabled.12
application/vnd.ms-project
application/vnd.ms-word.document.macroenabled.12
application/vnd.ms-word.template.macroenabled.12
application/vnd.ms-works
application/vnd.ms-wpl
application/vnd.ms-xpsdocument
application/vnd.mseq
application/vnd.musician
application/vnd.oasis.opendocument.chart
application/vnd.oasis.opendocument.chart-template
application/vnd.oasis.opendocument.database
application/vnd.oasis.opendocument.formula
application/vnd.oasis.opendocument.formula-template
application/vnd.oasis.opendocument.graphics
application/vnd.oasis.opendocument.graphics-template
application/vnd.oasis.opendocument.image
application/vnd.oasis.opendocument.image-template
application/vnd.oasis.opendocument.presentation
application/vnd.oasis.opendocument.presentation-template
application/vnd.oasis.opendocument.spreadsheet
application/vnd.oasis.opendocument.spreadsheet-template
application/vnd.oasis.opendocument.text
application/vnd.oasis.opendocument.text-master
application/vnd.oasis.opendocument.text-template
application/vnd.oasis.opendocument.text-web
application/vnd.olpc-sugar
application/vnd.oma.dd2+xml
application/vnd.openofficeorg.extension
application/vnd.openxmlformats-officedocument.presentationml.presentation
application/vnd.openxmlformats-officedocument.presentationml.slide
application/vnd.openxmlformats-officedocument.presentationml.slideshow
application/vnd.openxmlformats-officedocument.presentationml.template
application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
application/vnd.openxmlformats-officedocument.spreadsheetml.template
application/vnd.openxmlformats-officedocument.wordprocessingml.document
application/vnd.openxmlformats-officedocument.wordprocessingml.template
application/vnd.pvi.ptid1
application/vnd.quark.quarkxpress
application/vnd.realvnc.bed
application/vnd.recordare.musicxml
application/vnd.recordare.musicxml+xml
application/vnd.rig.cryptonote
application/vnd.rim.cod
application/vnd.rn-realmedia
application/vnd.rn-realmedia-vbr
application/vnd.route66.link66+xml
application/vnd.sailingtracker.track
application/vnd.seemail
application/vnd.sema
application/vnd.semd
application/vnd.semf
application/vnd.shana.informed.formdata
application/vnd.shana.informed.formtemplate
application/vnd.shana.informed.interchange
application/vnd.shana.informed.package
application/vnd.simtech-mindmapper
application/vnd.smaf
application/vnd.stepmania.stepchart
application/vnd.sun.xml.calc
application/vnd.sun.xml.calc.template
application/vnd.sun.xml.draw
application/vnd.sun.xml.draw.template
application/vnd.sun.xml.impress
application/vnd.sun.xml.impress.template
application/vnd.sun.xml.math
application/vnd.sun.xml.writer
application/vnd.sun.xml.writer.global
application/vnd.sun.xml.writer.template
application/vnd.sus-calendar
application/vnd.svd
application/vnd.symbian.install
application/vnd.syncml+xml
application/vnd.syncml.dm+wbxml
application/vnd.syncml.dm+xml
application/vnd.tao.intent-module-archive
application/vnd.tcpdump.pcap
application/vnd.tmobile-livetv
application/vnd.trid.tpt
application/vnd.triscape.mxs
application/vnd.trueapp
application/vnd.ufdl
application/vnd.uiq.theme
application/vnd.umajin
application/vnd.unity
application/vnd.uoml+xml
application/vnd.vcx
application/vnd.visio
application/vnd.visionary
application/vnd.vsf
application/vnd.wap.wbxml
application/vnd.wap.wmlc
application/vnd.wap.wmlscriptc
application/vnd.webturbo
application/vnd.wolfram.player
application/vnd.wordperfect
application/vnd.wqd
application/vnd.wt.stf
application/vnd.xara
application/vnd.xfdl
application/voicexml+xml
application/widget
application/winhlp
application/wsdl+xml
application/wspolicy+xml
application/x-7z-compressed
application/x-bittorrent
application/x-blorb
application/x-bzip
application/x-cdlink
application/x-cfs-compressed
application/x-chat
application/x-chess-pgn
application/x-conference
application/x-cpio
application/x-csh
application/x-debian-package
application/x-dgc-compressed
application/x-director
application/x-font-ttf
application/x-font-type1
application/x-font-woff
application/x-freearc
application/x-futuresplash
application/x-gca-compressed
application/x-glulx
application/x-gnumeric
application/x-gramps-xml
application/x-gtar
application/x-hdf
application/x-install-instructions
application/x-iso9660-image
application/x-java-jnlp-file
application/x-latex
application/x-lzh-compressed
application/x-mie
application/x-mobipocket-ebook
application/x-ms-application
application/x-ms-shortcut
application/x-ms-wmd
application/x-ms-wmz
application/x-ms-xbap
application/x-msaccess
application/x-msbinder
application/x-mscardfile
application/x-msclip
application/x-msdownload
application/x-msmediaview
application/x-msmetafile
application/x-rar-compressed
application/x-research-info-systems
application/x-sh
application/x-shar
application/x-shockwave-flash
application/x-silverlight-app
application/x-sql
application/x-stuffit
application/x-stuffitx
application/x-subrip
application/x-sv4cpio
application/x-sv4crc
application/x-t3vm-image
application/x-tads
application/x-tar
application/x-tcl
application/x-tex
application/x-tex-tfm
application/x-texinfo
application/x-tgif
application/x-ustar
application/x-wais-source
application/x-x509-ca-cert
application/x-xfig
application/x-xliff+xml
application/x-xpinstall
application/x-xz
application/x-zmachine
application/xaml+xml
application/xcap-diff+xml
application/xenc+xml
application/xhtml+xml
application/xml
application/xml-dtd
application/xop+xml
application/xproc+xml
application/xslt+xml
application/xspf+xml
application/xv+xml
application/yang
application/yin+xml
application/zip
audio/adpcm
audio/basic
audio/midi
audio/mp4
audio/mpeg
audio/ogg
audio/vnd.dece.audio
audio/vnd.rip
audio/webm
audio/x-aac
audio/x-aiff
audio/x-caf
audio/x-flac
audio/x-matroska
audio/x-mpegurl
audio/x-ms-wax
audio/x-ms-wma
audio/x-pn-realaudio
audio/x-pn-realaudio-plugin
audio/x-wav
audio/xm
image/bmp
image/cgm
image/g3fax
image/gif
image/ief
image/jpeg
image/ktx
image/png
image/prs.btif
image/sgi
image/svg+xml
image/tiff
image/vnd.adobe.photoshop
image/vnd.dece.graphic
image/vnd.djvu
image/vnd.dvb.subtitle
image/vnd.dwg
image/vnd.dxf
image/vnd.fastbidsheet
image/vnd.fpx
image/vnd.fst
image/vnd.fujixerox.edmics-mmr
image/vnd.fujixerox.edmics-rlc
image/vnd.ms-modi
image/vnd.ms-photo
image/vnd.net-fpx
image/vnd.wap.wbmp
image/vnd.xiff
image/webp
image/x-3ds
image/x-cmu-raster
image/x-cmx
image/x-freehand
image/x-icon
image/x-mrsid-image
image/x-pcx
image/x-pict
image/x-portable-anymap
image/x-portable-bitmap
image/x-portable-graymap
image/x-portable-pixmap
image/x-rgb
image/x-tga
image/x-xbitmap
image/x-xpixmap
image/x-xwindowdump
message/rfc822
model/iges
model/mesh
model/vnd.collada+xml
model/vnd.dwf
model/vnd.gdl
model/vnd.gtw
model/vnd.mts
model/vnd.vtu
model/vrml
model/x3d+binary
model/x3d+vrml
model/x3d+xml
text/cache-manifest
text/calendar
text/css
text/csv
text/html
text/n3
text/plain
text/prs.lines.tag
text/richtext
text/sgml
text/tab-separated-values
text/troff
text/turtle
text/uri-list
text/vcard
text/vnd.curl
text/vnd.curl.dcurl
text/vnd.curl.mcurl
text/vnd.curl.scurl
text/vnd.dvb.subtitle
text/vnd.fly
text/vnd.fmi.flexstor
text/vnd.graphviz
text/vnd.in3d.3dml
text/vnd.in3d.spot
text/vnd.sun.j2me.app-descriptor
text/vnd.wap.wml
text/vnd.wap.wmlscript
text/x-asm
text/x-fortran
text/x-java-source
text/x-nfo
text/x-opml
text/x-pascal
text/x-setext
text/x-sfv
text/x-uuencode
text/x-vcalendar
text/x-vcard
video/3gpp
video/3gpp2
video/h261
video/h263
video/h264
video/jpeg
video/jpm
video/mj2
video/mp4
video/mpeg
video/ogg
video/quicktime
video/vnd.dece.hd
video/vnd.dece.mobile
video/vnd.dece.pd
video/vnd.dece.sd
video/vnd.dece.video
video/vnd.dvb.file
video/vnd.fvt
video/vnd.mpegurl
video/vnd.ms-playready.media.pyv
video/vnd.uvvu.mp4
video/vnd.vivo
video/webm
video/x-f4v
video/x-fli
video/x-flv
video/x-m4v
video/x-matroska
video/x-mng
video/x-ms-asf
video/x-ms-vob
video/x-ms-wm
video/x-ms-wmv
video/x-ms-wmx
video/x-ms-wvx
video/x-msvideo
video/x-sgi-movie

@@ mime_type_data
123
3dml
3ds
3g2
3gp
7z
aac
adp
afm
ahead
ai
aif
aifc
aiff
air
ait
appcache
application
apr
arc
asc
asf
asm
asx
atom
au
avi
bat
bdm
bed
bin
blb
blorb
bmp
bpk
btif
bz
cab
caf
cap
cat
cct
cfs
cgm
chat
chm
chrt
cil
class
clp
cmx
cod
com
conf
cpio
crd
crt
cryptonote
csh
css
cst
csv
curl
cxt
dae
dart
dataless
dcr
dcurl
dd2
deb
def
deploy
der
dfac
dgc
dir
dist
distz
djv
djvu
dll
dmp
dms
dna
doc
docm
docx
dot
dotm
dotx
dpg
dsc
dtd
dump
dvb
dwf
dwg
dxf
dxr
ecma
elc
emf
eml
emma
emz
eot
eps
epub
esf
etx
exe
ez2
ez3f
f4v
f77
f90
fbs
fdf
fe_launch
fgd
fh
fh4
fh5
fh7
fhc
fig
flac
fli
flv
flw
flx
fly
for
fpx
fst
ftc
fvt
g3
gam
gca
gdl
geo
gif
gnumeric
gph
gramps
gtar
gtw
gv
h261
h263
h264
hal
hdf
hlp
htke
htm
html
icc
icm
ico
ics
ief
ifb
ifm
iges
igl
igs
iif
ims
in
install
ipk
iso
itp
ivp
jad
jar
java
jnlp
jpe
jpeg
jpg
jpgm
jpgv
jpm
js
json
jsonml
kar
karbon
kfo
kia
kne
knp
kon
kpr
kpt
kpxx
ksp
ktx
kwd
kwt
lasxml
latex
lbd
lbe
lha
link66
list
lnk
log
lostxml
lrf
lrm
lzh
m13
m14
m1v
m2a
m2v
m3a
m3u
m4u
m4v
mag
man
mar
mathml
mcurl
mdb
mdi
me
mesh
mets
mid
midi
mie
mime
mj2
mk3d
mka
mks
mkv
mlp
mmf
mmr
mng
mobi
mods
mov
movie
mp2
mp2a
mp3
mp4
mp4a
mp4s
mpe
mpeg
mpg
mpga
mpp
mpt
mpy
ms
mseed
mseq
msf
msh
msi
mts
mus
musicxml
mvb
mxl
mxml
mxs
mxu
n3
nbp
nfo
nml
npx
nsc
nsf
obd
obj
odb
odc
odf
odft
odg
odi
odm
odp
ods
odt
oga
ogg
ogv
ogx
omdoc
opml
org
otc
otg
oth
oti
otp
ots
ott
oxt
p
pas
pbm
pcap
pct
pcx
pdf
pfa
pfb
pfm
pgm
pgn
pgp
pic
pkg
pki
pkipath
pls
png
pnm
pot
potm
potx
ppam
ppm
pps
ppsm
ppsx
ppt
pptm
pptx
prc
pre
ps
psd
pskcxml
ptid
pyv
qam
qt
qwd
qwt
qxb
qxd
qxl
qxt
ra
ram
rar
ras
rdf
rdz
rgb
rif
rip
ris
rlc
rm
rmi
rmp
rmvb
roff
rss
rtf
rtx
s
sbml
sc
scm
scurl
see
seed
sema
semd
semf
sfd-hdstx
sfv
sgi
sgm
sgml
sh
shar
sid
sig
silo
sis
sisx
sit
sitx
skd
skm
skp
skt
sldm
sldx
slt
sm
snd
so
spl
spot
spx
sql
src
srt
sse
ssf
st
stc
std
stf
sti
stl
stw
sub
sub
sus
susp
sv4cpio
sv4crc
svc
svd
svg
svgz
swa
swf
sxc
sxd
sxg
sxi
sxm
sxw
t
t3
tao
tar
tcl
tex
texi
texinfo
text
tfm
tga
thmx
tif
tiff
tmo
torrent
tpt
tr
tra
tsv
ttc
ttf
ttl
twd
twds
txt
udeb
ufd
ufdl
ulx
umj
unityweb
uoml
uri
uris
urls
ustar
utz
uu
uva
uvd
uvf
uvg
uvh
uvi
uvm
uvp
uvs
uvt
uvu
uvv
uvva
uvvd
uvvf
uvvg
uvvh
uvvi
uvvm
uvvp
uvvs
uvvt
uvvu
uvvv
uvvx
uvvz
uvx
uvz
vcard
vcd
vcf
vcs
vcx
vis
viv
vob
vrml
vsd
vsf
vss
vst
vsw
vtu
vxml
w3d
wav
wax
wbmp
wbxml
wcm
wdb
wdp
weba
webm
webp
wgt
wks
wm
wma
wmd
wmf
wml
wmlc
wmls
wmlsc
wmv
wmx
wmz
wmz
woff
wpd
wpl
wps
wqd
wrl
wsdl
wspolicy
wtb
wvx
x3d
x3db
x3dv
xaml
xap
xar
xbap
xbm
xdf
xdm
xdp
xenc
xfdf
xfdl
xht
xhtml
xhvml
xif
xla
xlam
xlc
xlf
xlm
xls
xlsb
xlsm
xlsx
xlt
xltm
xltx
xlw
xm
xml
xo
xop
xpi
xpl
xpm
xps
xsl
xslt
xsm
xspf
xul
xvm
xvml
xwd
xz
yang
yin
z1
zip