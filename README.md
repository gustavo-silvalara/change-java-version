change-java-version

Create a folder with the same name as the file Change-Java-Version in C:\Program Files\WindowsPowerShell\Modules

then put Change-Java-Version.psm1 inside

to change the current java version just run the function passing the version + jvm as parameter, just like in the switch case

example: 

> ***jdk 11j9***

remember to change the path of the jdk binary for each version in the switch case, add more if you want to