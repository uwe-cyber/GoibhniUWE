today=`date +"%Y-%m-%d"`

while ! test -f "/opt/atlassian/confluence/logs/confluence_access.$today.log"; do
  sleep 10
  echo "Still waiting"
done

tail -f /opt/atlassian/confluence/logs/confluence_access.$today.log > /dev/pts/0