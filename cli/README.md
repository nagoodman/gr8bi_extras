CLI
===

The CLI for gr8.BI requires:
 - cURL command line
 - tee
 - read/write access to ~/.gr8bi_token
 - zip (only for pushAndRun)
 - read/write access to cli directory

CLI INSTALLATION
================

``` bash
cd cli
./gr8_CONFIGURE.sh "youremail@yourdomain.com" "password"
```
This creates a token (30 days), and places it in ```~/.gr8bi_token```

CLI USAGE
=========

Most commands have an online help to let you know what command line arguments you should use.  With the exception of just a couple of scripts, there's a direct matching with the [RESTful API documented at gr8.BI](http://www.gr8.bi/docs.html).
