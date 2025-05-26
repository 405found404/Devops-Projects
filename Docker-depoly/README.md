 Portfolio Deployment on AWS EC2 with Docker
-------------------------------------------------------------------------------------------------------------------------------------------
This project is about deploying a personal portfolio website using Docker on an Amazon EC2 instance. The goal is to host your site in a scalable and clean environment using modern DevOps tools.
--------------------------------------------------------------------------------------------------------------------------------------------
Architecture Diagram
--------------------------------------------------------------------------------------------------------------------------------------------
![image alt](image_url)

- *Amazon EC2*: A virtual server on AWS where everything runs.
- *Docker*: To containerize the portfolio application.
- *Docker Compose*: To manage multiple services easily.
- *Nginx*: Acts as a web server and reverse proxy.
- *Portfolio Website*: Your actual portfolio files (HTML, CSS, JS, etc.)


Your portfolio website is packaged into a Docker container and deployed on an EC2 instance. Docker Compose is used to simplify running everything, and Nginx is set up to serve the site to the internet. Everything is wrapped inside a secure AWS environment.

- Easy to deploy and scale
- Clean separation of services
- Portable and consistent across environments
- Great introduction to Docker and AWS

