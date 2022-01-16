#!/bin/bash


#Color
Yellow="\e[0;33m"

#Banner
echo -e $Yellow  "
  _        _         _              _______                                 _   
 | |      (_)       | |            |__   __|                               | |  
 | |       _   ___  | |_   ______     | |      __ _   _ __    __ _    ___  | |_ 
 | |      | | / __| | __| |______|    | |     / _  | | '__|  / _  |  / _ \ | __|
 | |____  | | \__ \ | |_              | |    | (_| | | |    | (_| | |  __/ | |_ 
 |______| |_| |___/  \__|             |_|     \__,_| |_|     \__, |  \___|  \__|
                                                              __/ |             
                                                             |___/              
"                                        
echo -e $Yellow "\e[0m"

echo "🔃 CEWL Started"
cewl -d 1 -m 3 $1 -w cewl.txt
echo "✅ CEWL done !"
echo "-------------------------"
echo "🔃 Waybackrobots Started"
python3 waybackrobots.py $1
echo "✅ Waybackrobots done"
echo "-------------------------"
echo "🔃 Go-dork Started"
go-dork -q "site:$1" -p 2 -s > go-dork.txt
echo "✅ Go-dork Done"
echo "-------------------------"
gau --subs $1 > gau_urls.txt
cat gau_urls.txt | unfurl -u paths | sed 's#/#\n#g' | sort -u > custom_gau.txt
cat cewl.txt custom_gau.txt go-dork.txt $1-robots.txt | sort -u > target_custom.txt
cat target_custom.txt | cut -d "/" -f1 | sort -u > cleaned_custom_wordlist.txt
echo "✅ generated wordlists $(cat cleaned_custom_wordlist.txt | wc -l) words";
echo "✅ Done"
