export CC_OPT_FLAGS="-march=native"
export CC=gcc
export GCC_HOST_COMPILER_PATH=$(which gcc)
export PYTHON_BIN_PATH=$(which ${python_version})
export USE_DEFAULT_PYTHON_LIB_PATH=1
export TF_ENABLE_XLA=0
export TF_NEED_CUDA=0
export TF_NEED_GCP=0
export TF_NEED_GDR=0
export TF_NEED_HDFS=0
export TF_NEED_JEMALLOC=1
export TF_NEED_MPI=0
export TF_NEED_OPENCL=0
export TF_NEED_OPENCL_SYCL=0
export TF_NEED_S3=0
export TF_NEED_VERBS=0
export TF_SET_ANDROID_WORKSPACE=0
./configure
bazel build --show_progress_rate_limit=5 -c opt //tensorflow:libtensorflow.so
