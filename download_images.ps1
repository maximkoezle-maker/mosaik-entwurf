$urls = @(
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Bodenmosaik/boden-mosaik-1.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Bodenmosaik/boden-mosaik-2.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Bodenmosaik/boden-mosaik-3.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Bodenmosaik/boden-mosaik-4.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Wandmosaik/wand-mosaik-1.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Wandmosaik/wand-mosaik-3.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Wandmosaik/wand-mosaik-10.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Wandmosaik/wand-mosaik-13.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Plastik/mosaik-plastik-1.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Plastik/mosaik-plastik-2.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Plastik/mosaik-plastik-3.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Gebrauch/gebrauch-mosaik-1.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Gebrauch/gebrauch-mosaik-2.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Gebrauch/gebrauch-mosaik-3.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Zierelement/zier-element-1.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/Zierelement/zier-element-2.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/mosaik/mosaik-1.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Referenzen/mosaik/mosaik-2.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/aktuelles/lichtbad/lichtbad_0252.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/aktuelles/lernuhr/lernuhr_001.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/aktuelles/wandeinbauten/wandeinbauten_001.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Mosaik-Plattenkunst/werkstatt-mosaik/werkstatt1.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Mosaik-Plattenkunst/atelier-mosaik/atelier1.jpg",
    "http://web.archive.org/web/20230601im_/http://mosaik-plattenkunst.de/Bilder-Mosaik-Plattenkunst/Material-Mosaik/mosaik-steine1.jpg"
)

$destDir = "C:\Users\maxim\.gemini\antigravity\scratch\mosaik-plattenkunst\assets\images"

foreach ($url in $urls) {
    $filename = $url.Substring($url.LastIndexOf("/") + 1)
    $destFile = Join-Path $destDir $filename
    Write-Host "Downloading $filename..."
    try {
        Invoke-WebRequest -Uri $url -OutFile $destFile -ErrorAction Stop
    } catch {
        Write-Host "Failed to download $filename"
    }
}
