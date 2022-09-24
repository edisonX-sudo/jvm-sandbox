typeset DIR=.opt
typeset WORK_DIR=~
typeset ARTIFACT=jvm-sandbox-1.0
cd $WORK_DIR || exit 1
if [ ! -d $DIR/$ARTIFACT ]; then
  mkdir $DIR
  cd $DIR || exit 1
  wget https://github.com/edisonX-sudo/jvm-sandbox/archive/refs/tags/1.0.tar.gz
  tar -xvf 1.0.tar.gz
fi
ls -la ~/.opt/jvm-sandbox-1.0
exit 0

# 4 docker, use nsexec 4 namespace switch
# pid=<java_pid>;./sandbox.sh -p $pid -d 'debug-watch/watch?class=org.example.Main&method=checkPermission'
