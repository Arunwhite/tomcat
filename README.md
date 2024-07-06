# tomcat
Build the Docker Image: 
docker build -t tomcat .

Run the Docker container using the following command: 
docker run -itd -p 8080:8080 --name tomcat tomcat

Access the Application
Open your web browser and navigate to http://localhost:8080/hellotomcat
