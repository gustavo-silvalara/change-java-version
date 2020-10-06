change-java-version

Create a folder with the same name as the file Change-Java-Version in C:\Program Files\WindowsPowerShell\Modules

then put Change-Java-Version.psm1 inside

to change the current java version just run the function passing the version + jvm as parameter, just like in the switch case

example:

> **_jdk 11j9_**

remember to change the path of the jdk binary for each version in the switch case, add more if you want to

### observation

may be needed to run Set-ExecutionPolicy -ExecutionPolicy Bypass as adm

[Update-Environment function](https://stackoverflow.com/questions/14381650/how-to-update-windows-powershell-session-environment-variables-from-registry)
