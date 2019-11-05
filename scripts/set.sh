echo '--> Creating WAR File'
jar -cvf sample.war *
echo '--> Deleting previous Dependencies'
sudo rm -rfv /usr/local/tomcat9/webapps/sample/ /usr/local/tomcat9/webapps/sample.war
echo '--> Copying new Files'
mv -v sample.war /usr/local/tomcat9/webapps/