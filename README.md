# What is hugo-sync and about it
hugo-sync is an **Automatic Solution** that update your site page from github or your wordpress site based on [HUGO](https://gohugo.io).

# Benifit of things
1. Backup: It takes backup of your web content in the github.
2. Search: It adds search function to your hugo website(although the hugo version 1.0 will support search function,but the current is have no proper search solution).
3. Automation: Just do it once,everything is done！

# Work flow 
1. Set the github hook event.  
![git hook event](https://raw.githubusercontent.com/hiproz/pub-res/master/git-hook-event.jpg)  
2. Add hook code to your wordpress:[How to use wordpress hook functions to follow the file change events](https://goodmemory.cc/how-to-use-wordpress-hook-functions-to-follow-the-file-change-events/)
3. Deploy your hook server in your wordpress server and hugo server if necessary.
4. Write in your wordpress page or in the github.the github will send webservice hook event to our hook server.  
5. The hugo hook server will update the hugo content and start the hugo procedural after received the github hook event msg.
6. After the finish of hugo converting, the static html page will be in public folder of hugo.  
7. The hugo hook server deploy the html to our website .  

All the actions above will be done by the computor automatically.  what the only thing we need to do is writing your articles.  
![hugo-sync work flow](https://raw.githubusercontent.com/hiproz/pub-res/master/hugo-sync.jpeg)

# How to deploy the files
1. Install the hugo tools,and create a hugo website.  
2. Download your favorite theme, and config the config.toml: 
```
# Theme to use (located in /themes/THEMENAME/)    
theme = "hyde-z"
```
3. Clone the repo, deploy the files in your hugo server local dictionary.  
4. Clone the repo, deploy the files in your wordpress server local dictionary,maybe the hugo server is same as wordprss server.  
5. Modity the shell as your own server environment.  
6. Add auto start script to the rc.local,eg:

```
/xx/xxx/python3 /xx/xx/wp-hook-svr.py
```
or
```
/xx/xxx/python3 /xx/xx/hugo-hook-svr.py
```
these commands means python server use the default port of 11000 or 11001.
7. Check the firewall of your hook server.
8. Reboot the hook server that enable eh rc.local script.

# Demos
Please give PR or your website that use hugo-sync solution. It will be display in the bellow.

# Issues
Welcome the issues and PR for the project.

# License
MIT

