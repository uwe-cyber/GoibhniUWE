today=`date +"%Y-%m-%d"`

while ! test -f "/usr/local/tomcat/logs/localhost_access_log.$today.txt"; do
  sleep 10
  echo "Still waiting"
done

tail -f /usr/local/tomcat/logs/localhost_access_log.$today.txt > /dev/pts/0
