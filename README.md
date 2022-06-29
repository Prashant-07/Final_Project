
# Cloud Devops Engineer Capstone Project
Capstone project for Nanodegree in Cloud Devops Engineer

# Introduction
In this project I applied following skills which I learnt throughout my nanodegee:
  

 - Cloudformation
 - Circleci
 - Ansible
 - Docker
 - Kubernetes 

# What are we doing in this project
we are trying to deploy an application via CI/CD pipeline in an automated manner based on the configurations that we set in yml files.

# How are we doing it ?

 1. The first step in our pipeline is linting both the application code ( via pylint ) and 
	 Dockerfile ( via hadolint ).
 2. We are deploying the following aws resources required for the application via 	  Cloudformation ( Infrastructure as code ).
	 - Network layer ( VPC, Pvt subnets, Internet Gateways etc.)
	 - Kubernetes cluster 
	 - Nodes for the above kubernetes cluster, where our application will be deployed
	 - An EC2 manager which will handle all the configuration related jobs for the kubernetes cluster. 
	 - A load balancer to manage the load balancing job for the deployed pods.

# Deployment Strategy
We are using rolling deployment strategy in this architecture which will slowly replace the pods ( with old code ) with new pods ( with latest app image ).

# Application
I have created a simple application which will print out Prashant final Project, if the whole pipeline executes successfully.
 
	
