$SearchHashtag = "atlpsug"

$wc = new-object net.webclient
$url = "http://search.twitter.com/search.atom?q=%23$SearchHashtag"
$OutFile = "c:\temp\Download_$($SearchHashtag)_$([DateTime]::Now.ToString('yyyyMMddHHmmss')).txt"
$wc.DownloadString($url) | add-content $OutFile;
