
# List-Target

This is a Simple Bash Script For Automating the Process of Generating Wordlists from various tool's like Gau, Waybackrobots, cewl etc..... Very Useful for Bug Bounty Hunters :)

## Install this tools 1st

[go-dork](https://github.com/dwisiswant0/go-dork)

```bash
  GO111MODULE=on go install dw1.io/go-dork@latest
```
[waybackrobots.py](https://gist.github.com/mhmdiaa)
```
wget https://gist.githubusercontent.com/mhmdiaa/2742c5e147d49a804b408bfed3d32d07/raw/5dd007667a5b5400521761df931098220c387551/waybackrobots.py
```
[Gau](https://github.com/lc/gau)
```
go install github.com/lc/gau/v2/cmd/gau@latest
```
[cewl](https://github.com/digininja/cewl) ( pre-installed in kali )
```
git clone https://github.com/digininja/CeWL.git
```
Then copy all bin file to usr/bin OR usr/local/bin 
```
sudo cp /go/bin/go-dork gau /usr/local/bin
```
