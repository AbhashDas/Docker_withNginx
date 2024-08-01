# Docker_withNginx
Deploying a simple HTML Page with Docker and Nginx

**Steps:**
**- Design your simple HTML webpage with draft design.**
  - Add index.html which acts as the main Homepage
  - Add about.html which acts as AboutUs page
  - Add contact.html which acts as Contact Us page
  - Add services.html which shows all the services offered.

**- Create your Dockerfile using below configuration:**
  - nginx:latest as the base image
  - Copy all the html pages to /usr/share/nginx/html/
  - Copy the nginx.conf to the container created
  - expose the port 80 and then start the nginx engine.
 
- **Update the nginx.conf file** to make sure that nginx default port is exposed to 80. Also, the location to where all the html files are located.

- **Build the docker image using the Dockerfile:**
  - docker build -t my_webpage .

- **Run the image to create the container:**
  - docker run -d -p 8080:80 my_webpage #this exposes the port 8080 to host and 80 at container.
 
-----------------------------------------------------------------------------------------------------------------------------------------------------
 
**How to access the webpage?**
- if you are running the container in aws ec2 machine, then the public IP is used to access the website.
- if you are running the container in local wsl ubuntu machine, then get the public IP using ifconfig --> eth0
  - Ex: public_ip:8080/about.html, public_ip:8080/contact.html, public_ip:8080/services.html, public_ip:8080 --> public_ip:8080/index.html

