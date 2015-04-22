
# start boot2docker, then paste in...

Start docker with:
docker run -dp 8787:8787 -v /c/Users/user/docker:/home/rstudio/ -e ROOT=TRUE rocker/hadleyverse


Then open firefox and go to:
  
http://192.168.59.103:8787/
  
ONly need to do this once, from the shell in rstudio:  
  sudo apt-get update
  sudo apt-get install sun-java6-jre




# testing...
library("rJava")
.jinit() # this starts the JVM
s <- .jnew("java/lang/String", "Hello World!")
s

# install
devtools::install_github("benmarwick/JSTORr")
