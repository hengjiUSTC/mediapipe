export GLOG_logtostderr=1

function(){
  export HTTPS_PROXY=$1:$2
  export HTTP_PROXY=$1:$2
  bazel  --host_jvm_args "-DsocksProxyHost=94.23.83.149 -DsocksProxyPort=4153" build -c opt  --define MEDIAPIPE_DISABLE_GPU=1
}

