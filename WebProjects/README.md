# WebProjects
maven web应用项目
`mvn archetype:generate -DgroupId={project-packaging} -DartifactId={project-name} -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false`


### 001CounterWebApp
* web简单应用计数。
* mvn clean package打包生成war包后将其放到tomcat或其他web服务器的web应用目录，重启服务器访问~/001CounterWebApp/index.jsp。

