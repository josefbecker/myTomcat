# myTomcat

After cloning this project run

# 1. Create a new build for your application:

  oc new-build --strategy docker --binary  --name mytomcat
  
# 2. Start a binary build using the local repro

  oc start-build mytomcat --from-repo ../myTomcat --follow
  
# 3. Deploy the application using new-app, then create a route for it:

  oc new-app mytomcat
  
  oc expose mytomcat
  
# docker native

# 1. Docker build
  
  sudo docker build --tag mywebserver .
  
 # 2. Start Webserver
 
  sudo docker run -it --rm -p 8888:8080 mywebserver
  
  # 3 Start Browser
    
    https://localhost:8888
    
    click Manager App
    click helle-world
    
  # Further information about Tomcat Docker
  
  * [How-to-Create-and-Run-Apache-Tomcat-Docker-Container](https://support.cmfirstgroup.com/hc/en-us/articles/115002378523-How-to-Create-and-Run-Apache-Tomcat-Docker-Container) - Information
  
    https://support.cmfirstgroup.com/hc/en-us/articles/115002378523-How-to-Create-and-Run-Apache-Tomcat-Docker-Container
