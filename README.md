
# List-Target

This is a Simple Bash Script For Automating the Process of Generating Wordlists from various tool's like Gau, Waybackrobots, cewl etc..... Very Useful for Bug Bounty Hunters :)

## Acknowledgements

 - [Awesome Readme Templates](https://awesomeopensource.com/project/elangosundar/awesome-README-templates)
 - [Awesome README](https://github.com/matiassingers/awesome-readme)
 - [How to write a Good readme](https://bulldogjob.com/news/449-how-to-write-a-good-readme-for-your-github-project)


## Install this tools 1st

go-dork

```bash
  GO111MODULE=on go install dw1.io/go-dork@latest
```
waybackrobots.py
```
wget https://gist.githubusercontent.com/mhmdiaa/2742c5e147d49a804b408bfed3d32d07/raw/5dd007667a5b5400521761df931098220c387551/waybackrobots.py
```
Gau
```
go install github.com/lc/gau/v2/cmd/gau@latest
```
Then copy all bin file to usr/bin OR usr/local/bin 
```
sudo cp /go/bin/go-dork gau /usr/local/bin
```
