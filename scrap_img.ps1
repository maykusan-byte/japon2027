# 1. Définition des données (Format JSON pour lecture facile par PowerShell)
$jsonContent = @'
[
    { "name": "Shinjuku", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Shinjuku-neon_Tokyo.jpg" },
    { "name": "Akihabara", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Akihabara_picture.jpg" },
    { "name": "Ueno", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Ueno_park.jpg" },
    { "name": "Ikebukuro", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Ikebukuro_-_Streets.jpg" },
    { "name": "Kamakura (Ville)", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Kamakura-daibutsu.jpg" },
    { "name": "Kamakurakōkō-Mae", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Kamakurakokomae_station_2020_8_21.jpg" },
    { "name": "Katori (Chiba)", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/A_view_of_Sawara-Honmachi.JPG" },
    { "name": "Parc Oishi", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Mount_Fuji_from_Oishi_Park.jpg" },
    { "name": "Chureito Pagoda", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Chureito_Pagoda.jpg" },
    { "name": "Gion", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Gion_Kyoto.jpg" },
    { "name": "Ninna-ji", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Ninnaji_Kyoto06s3s4410.jpg" },
    { "name": "Renge-ji", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Ninna-ji_Renge-ji_%28Ukyo-ku%2C_Kyoto%29_hdsr_Temple_S5_003.jpg" },
    { "name": "Kurama-dera", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Kurama-dera_Tahoto.jpg" },
    { "name": "Kifune Shrine", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Kifune_Shrine.jpg" },
    { "name": "Otagi Nenbutsuji", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Otagi_nenbutsuji17s3s4592.jpg" },
    { "name": "Hozugawa Boat", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Hozugawa-Kudari_201126g.jpg" },
    { "name": "Nintendo Museum", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Nintendo_Museum_Entrance.jpg" },
    { "name": "Momiji-ya (Takao)", "image": "https://www.momijiya.jp/img/bath/sld-h-hoshi1.jpg" },
    { "name": "USJ (Universal)", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Usj_osaka_%2852961760903%29.jpg" },
    { "name": "Wakayama City", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Wakayama_castle_2.jpg" },
    { "name": "Kasuga-taisha", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Kasuga_Taisha.jpg" },
    { "name": "Wakakusayama", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Wakakusayama.jpg" },
    { "name": "Ōmihachiman", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Omihachiman_Canal.jpg" },
    { "name": "Amanohashidate", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Amanohashidate.jpg" },
    { "name": "Ine Fishing Village", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Inefunaya2.jpg" },
    { "name": "Itsukushima (Île)", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/miyajima.jpg" },
    { "name": "Itsukushima-jinja", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Itsukushima_torii.jpg" },
    { "name": "Daishō-in", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Daisho-in_temple-06.jpg" },
    { "name": "Etajima", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Etajima_Island._-_panoramio.jpg" },
    { "name": "Rurikō-ji", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Rurikoji_temple_pagoda_in_Spring.jpg" },
    { "name": "Akiyoshido Cave", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Akiyoshicave.jpg" },
    { "name": "Beppu Benten Pond", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Beppu_benten_pond_-_20190204_-_01.jpg" },
    { "name": "Motonosumi Shrine", "image": "https://lh3.googleusercontent.com/p/AF1QipP8xGUS99SUYnm_iGdgtDeRHAqEIRbf1lT-aDkn=w270-h312-n-k-no" },
    { "name": "Mori Clan Burial", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Toukouji-Hagi_04.jpg" },
    { "name": "Unzen Jigoku", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Unzen_Jigoku_-_panoramio_-_abu_9495.jpg" },
    { "name": "Takachiho Gorge", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Takachiho_Gorge_-_01.jpg" },
    { "name": "Amanoiwato-jinja", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Torii_at_Ama-no-Iwato_Shrine%2C_Takachiho%2C_Miyazaki_Prefecture.jpg" },
    { "name": "Kusasenrigahama", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Kusasenri01.jpg" },
    { "name": "Kamishikimi Kumano", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Kamishikimi_Kumanoimasu_Shrine_001.jpg" },
    { "name": "Kokemusu Forest", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Shiratani_Unsuikyo_%284196806304%29.jpg" },
    { "name": "Togakushi Shrine", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Togakushi_Shrine.jpg" },
    { "name": "Jigokudani Park", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Snow_Monkeys_at_Jigokudani_Monkey_Park%2C_Japan.jpg" },
    { "name": "Kamikōchi", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Kamikochi_Taisho-ike05n3200.jpg" },
    { "name": "Shirakawa-gō", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Shirakawa-go_%282017-07-22%29.jpg" },
    { "name": "Kanazawa (Ville)", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Kenroku-en%2C_Kanazawa.jpg" },
    { "name": "Gifu (Ville)", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Remote_View_of_Gifu_Castle.jpg" },
    { "name": "Takayama Inari", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Takayama_Inari_shrine_P2110474.JPG" },
    { "name": "Takaragawa Onsen", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Takaragawa_Onsen_01.jpg" },
    { "name": "Amagisou (Izu)", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Amagiso_Odaru_Waterfall_Hot_Springs.jpg" },
    { "name": "Nachi Falls", "image": "https://commons.wikimedia.org/wiki/Special:FilePath/Nachi_waterfall_%28Japan_2007_047%29.jpg" }
]
'@

# Convertir le JSON en objets PowerShell
$locations = $jsonContent | ConvertFrom-Json

# 2. Création du dossier de destination
$destinationFolder = Join-Path -Path $PSScriptRoot -ChildPath "images"
if (!(Test-Path -Path $destinationFolder)) {
    New-Item -ItemType Directory -Path $destinationFolder | Out-Null
    Write-Host "Dossier 'images' créé." -ForegroundColor Cyan
}

# 3. Boucle de téléchargement
Write-Host "Début du téléchargement..." -ForegroundColor Green

foreach ($loc in $locations) {
    $url = $loc.image
    $name = $loc.name
    
    # Nettoyer le nom du fichier (enlever les caractères interdits comme / \ : * ? " < > |)
    $cleanName = $name -replace '[\\/:*?"<>|]', '_'
    
    # Tenter de deviner l'extension via l'URL
    $extension = ".jpg" # Par défaut
    if ($url -match '\.(jpg|jpeg|png|gif|bmp)$') {
        $extension = $matches[0]
    }
    
    $filePath = Join-Path -Path $destinationFolder -ChildPath "$cleanName$extension"
    
    Write-Host "Téléchargement de : $name" -NoNewline
    
    try {
        # Téléchargement avec un User-Agent pour éviter les blocages (notamment Wikimedia)
        Invoke-WebRequest -Uri $url -OutFile $filePath -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)" -ErrorAction Stop
        Write-Host " [OK]" -ForegroundColor Green
    }
    catch {
        Write-Host " [ERREUR]" -ForegroundColor Red
        Write-Host "  -> Impossible de télécharger $url" -ForegroundColor DarkGray
    }
}

Write-Host "`nTerminé ! Les images sont dans : $destinationFolder" -ForegroundColor Cyan
Read-Host "Appuyez sur Entrée pour quitter..."