grasscrm
========
Added by Swarup to test svn patch..
Open Source Java based CRM

How to configure the environment:

(1)Download and install Postgres database, the download URL:http://www.postgresql.org/download/

(2)Download and install Jboss Server Version 6.1.0 Final version, the download URL:http://download.jboss.org/jbossas/6.1/jboss-as-distribution-6.1.0.Final.zip, after installed
Jboss, need change the configuration, open file /jboss/bin/run.conf.bat,in line 43, change
set "JAVA_OPTS=-Xms128M -Xmx512M -XX:MaxPermSize=256M"
into :
set "JAVA_OPTS=-Xms1024m -Xmx1024m -XX:PermSize=128M -XX:MaxNewSize=256m -XX:MaxPermSize=512m

(3)Download and install Eclipse, then import the Grass CRM project

(4)Config the build.xml, in line 19, change the value of propery "jboos.deploy" to your jboss sever location

(5)Config the datasource in Grass/WebContent/WEB-INF/config/spring/applicationContext.xml, in line 16, if postgres
database is installed in other server, you can change the value of url here.

(6)Initialize database(only need be done at the first time):
   
   a. Create a new database "grass", the script is as following, you also can create it in pgAdmin tool.
   CREATE DATABASE grass
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'English, United States'
       LC_CTYPE = 'English, United States'
       CONNECTION LIMIT = -1;
   
   b. Switch current database to grass, then execute the sql script in Grass/sql/InitializeData.sql
   
 (7)In eclipse, go to Grass project, execute "ant deploy" to deploy project to jboss server, then start jboss server.
 (8)In browser, input URL:localhost:8080/grass, will open the login page, the default user name is "admin", password is empty, then you can login the Grass CRM system.
 
 
 How to deploy grass crm to tomcat:
 
 If you want to deploy grass crm to Tomcat, you need add jta.jar to this project, you can download jta.jar from http://www.java2s.com/Code/Jar/j/Downloadjtajar.htm, 
 if you deploy grass crm to Jboss, needn't this jar.
 