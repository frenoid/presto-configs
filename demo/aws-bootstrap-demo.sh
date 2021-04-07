sudo yum update -y
yum install java-11-amazon-corretto.x86_64 -y
wget https://repo.maven.apache.org/maven2/io/prestosql/presto-server/330/presto-server-330.tar.gz 
tar xvzf presto-server-330.tar.gz
cd presto-server-330
mkdir etc
cd etc
aws s3 sync s3://normans-bootstrap-scripts/presto/demo/etc/ ./
cd ..
sudo bin/launcher start
