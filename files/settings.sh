# Environment and deploy file
# For use with bin/server_deploy, bin/server_package etc.
DEPLOY_HOSTS="127.0.0.1"

APP_USER=root
APP_GROUP=spark
JMX_PORT=9999
# optional SSH Key to login to deploy server
#SSH_KEY=/path/to/keyfile.pem
INSTALL_DIR=/var/log/install
LOG_DIR=/var/log
PIDFILE=spark-jobserver.pid
JOBSERVER_MEMORY=1G
SPARK_VERSION=2.2.1
MAX_DIRECT_MEMORY=512M
SPARK_HOME=/usr/share/jobserver/spark-2.2.1-bin-hadoop2.6
SPARK_CONF_DIR=$SPARK_HOME/conf
# Only needed for Mesos deploys
#SPARK_EXECUTOR_URI=/home/spark/spark-1.6.0.tar.gz
# Only needed for YARN running outside of the cluster
# You will need to COPY these files from your cluster to the remote machine
# Normally these are kept on the cluster in /etc/hadoop/conf
# YARN_CONF_DIR=/pathToRemoteConf/conf
# HADOOP_CONF_DIR=/pathToRemoteConf/conf
#
# Also optional: extra JVM args for spark-submit
# export SPARK_SUBMIT_OPTS+="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5433"
SCALA_VERSION=2.11.6 # or 2.10.4

# optional:
# REMOTE_JOBSERVER_DIR=file://... or hdfs://...
SPARK_LAUNCHER_VERBOSE=0
JOBSERVER_FG=1
#MANAGER_LOGGING_OPTS="-Dlog4j.configuration=file:$appdir/log4j-server-123.properties"
