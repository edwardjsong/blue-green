#Blue Green Deploy a Schema Change

To illustrate a zero time downtime blue green deployment might look like when the 
application has a schema change.

Application - a sprint boot application that has a single controller which connects 
to an external database with a table called user with a single field userid.  In
this example, we are to suppose that there is a significant amount of rows in user.
The application makes a change to the field user_id iwth the following database 
migration script.

<pre>ALTER TABLE user MODIFY COLUMN userid user_id varchar(5);</pre>


##### Requirements
1. We do not support database rollbacks - a general statement because some schema
changes may not be rolled back like a dropping of a column.


##### Assumptions
1. Engineering operations has discovered the potential issue and has a line of 
communication with the application engineer.
2. It is known that the 'user' table has millions of rows.   



##### Proposed Deployment Plan:
Communicated to the application engineer.
1. Deploy v1 of app (already in production).  This copy only supports v1 of the 
database, ie. user.userid.  
2. Deploy v2 of app ()


##### Execute
To execute the application locally
* `./gradlew bootRun`
* Verify that it is running by hitting the name service
    * `curl http://localhost:8080/user/name`
    
       
##### GitHub Actions
1) Sign-up for beta
2)  



##### Proficiencies Demonstrated
* Software Engineering
  * Spring Boot
  * Gradle
  * Docker




##### TODOs
1. Add Terraform Template - To create a base environment for Fargate to deploy containers into.
1. Add Gradle to build Docker file and register the file into ECR.
* VPC


2. Deploy Dockerized Jenkins 

    