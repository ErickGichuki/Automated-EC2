# Working with Workspaces/Modules/Variables/Remotebackend

### Workspaces are used when managing multiple environments in a single infranstructure.
 - Lets say we have 3 env; dev, stage and prod and the type of instances is different for all of them how will you do this? Workspaces come in now. 
 - To create a workspace you run ```terraform workspace new``` to switch to a particular workspace run ```terraform workspace select```.
 - For this particular project we'll have 3 environments where 3 instances will be created.

### Remote Backend
 - We understand that sensitive information should not be shared to the public and therefore handled in a good way. I have implemented remote backend with s3 bucket.
 - By doing this terraform state won't be stored locally in a statefile but in an s3 bucket.

### Modules
 - In a scenario where you're creating a couple of resources its a good practice to bring in the concept of separation of concerns. I have separated resources in modules form.
 - We have an ec2 modules which we just need to reference in the main.tf which is in the same directory with the modules folder.

### Input and Output Variable
 - Have parametired the ami and instance type for dynamic purposes instead of hardcoding the values