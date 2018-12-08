# myTomcat

After cloning this project run

#1. Create a new build for your application:

  oc new-build --strategy docker --binary  --name mytomcat
  
#2. Start a binary build using the local repro

  oc start-build mytomcat --from-repo ../myTomcat --follow
  
#3. Deploy the application using new-app, then create a route for it:

  oc new-app mytomcat
  oc expose mytomcat
