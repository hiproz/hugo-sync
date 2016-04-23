# What is hugo-sync
hugo-sync is an **automaticlly solution** that update your site page from github or your wordpress site based on [HUGO](https://gohugo.io).

# Benifit
1. Backup:backup your web content in the github.
2. Search:add search function to your hugo website(although the hugo version 1.0 will support search function,but the current is have no proper search solution).
3. Automation:do noce,all is done！

# Work flow 
1. set the github hook event.  
![git hook event](https://hiproz.github.io/goodmemory.cc/blog/images/2015/12/git-hook-event.jpg)  
2. add hook code to your wordpress:[通过wordpress钩子接口实现新增修改删除文章后执行相应动作](https://www.goodmemory.cc/%E9%80%9A%E8%BF%87wordpress%E9%92%A9%E5%AD%90%E6%8E%A5%E5%8F%A3%E5%AE%9E%E7%8E%B0%E6%96%B0%E5%A2%9E%E4%BF%AE%E6%94%B9%E5%88%A0%E9%99%A4%E6%96%87%E7%AB%A0%E5%90%8E%E6%89%A7%E8%A1%8C%E7%9B%B8%E5%BA%94/)
3. deploy your hook server in your wordpress server and hugo server if necessary.
4. write in your wordpress page or in the github.the github will send webservice hook event to our hook server.  
5. the hugo hook server will update the hugo content and start the hugo procedural after received the github hook event msg . 6. after the finish of hugo converting, the static html page will be in public folder of hugo.  
7. the hugo hook server deploy the html to our website .  

all the action above will be done by the computor automatically.  what the only we need to do is writing.  
![hugo-sync work flow](https://hiproz.github.io/goodmemory.cc/blog/images/2015/12/hugo-sync.jpeg)

# File func description

# How to use
1. install the hugo tools.  
2. download your favorite theme, and config the config.toml.  
    # Theme to use (located in /themes/THEMENAME/)    
    theme = "hyde-y"  
3. download the sync folder, and deploy the folder in your hugo root dictionary.  
![](https://hiproz.github.io/goodmemory.cc/blog/images/2015/12/download-sync.jpg)  
4. create the repo from the remote github server to the sync root dictionary,and rename the repo to "git" or modify the shell script of "git" to your own repo name.  
    git clone https://github.com/xxx/xxx.git   
![](https://hiproz.github.io/goodmemory.cc/blog/images/2015/12/add-git.jpg)  
5. the server is use python3 ,need to install the python3 in your server  
6. modity the shell as your own server environment  
7. start the hook server
wordpress hook server:
    /xx/xxx/python3 /xx/xx/hook-svr.py 
hugo hook server:
    /xx/xxx/python3 /xx/xx/hook-svr.py  


# Demo
[goodmemory.cc](https://www.goodmemory.cc)

# Issues
welcome the issues and PR for the project .

# License
MIT

