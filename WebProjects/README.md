# WebProjects
* maven web应用项目。
* ```使用模版插件创建web应用项目
mvn archetype:generate -DgroupId={project-packaging} -DartifactId={project-name} -DarchetypeArtifactId=maven-archetype-webapp -DinteractiveMode=false```。


## 部署到tomcat中
* mvn tomcat7:deploy(适用于tomcat7、tomcat8、tomcat9)。
* tomcat的conf/tomcat-users.xml的tomcat-users中添加
```<role rolename="manager-gui"/>
  <role rolename="manager-script"/>
  <user username="admin" password="hello123" roles="manager-gui,manager-script" />
```  
* maven的conf/settings.xml添加
```<server>
      <id>tomcat7</id>
      <username>admin</username>
      <password>hello123</password>
    </server>
```
* 项目的pom.xml添加
```<plugins>
      <!-- deploy to tomcat7 -->
      <plugin>
        <groupId>org.apache.tomcat.maven</groupId>
        <artifactId>tomcat7-maven-plugin</artifactId>
        <version>2.2</version>
        <configuration>
          <!-- 注意此处的url,它的值tomcat发布应用管理页面地址 -->
          <url>http://localhost:8080/manager/text</url>
          <server>tomcat7</server> <!-- 此处的名字必须和maven/conf/setting.xml中配置的ID一致 -->
          <path>/${project.build.finalName}</path> <!-- 此处的名字是项目发布的工程名 -->
        </configuration>
      </plugin>
   </plugins>
```
* tomcat-users.xml更改后需要重启tomcat。使用mvn tomcat7:deploy时tomcat碧玺是启动的否则会有错误。若有多个不同版本tomcat可配置多个plugin，需要用到那个tomcat就先启动那个tomcat。

### 001CounterWebApp
* web简单应用计数。
* mvn clean package打包生成war包后将其放到tomcat或其他web服务器的web应用目录，重启服务器访问~/001CounterWebApp/index.jsp。

