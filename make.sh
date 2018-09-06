export LANG=C
#Bootstrap JDK的安装路径，必须设置
export ALT_BOOTDIR=/lib/jvm/jdk6/jdk1.6.0_45
#允许自动下载依赖
export ALLOW_DOWNLOADS=true


#并行编译的线数，设置和cpu的数量一致即可
export HOTSPOT_BUILD_JOBS=1
export ALT_PATALLER_COMPILE_JOBS=1


#比较本次build出来的映像与先前版本的差异，这对我们来说没有意义，
export SKIP_COMPARE_IMAGES=true
#使用预编译头文件，不加这个编译会更慢一些
export USE_PRECOMPILED_HEADER=true


#指定要编译的内容
export BUILD_LANGTOOLS=true
export BUILD_HOTSPOT=true
export BUILD_JDK=true
export BUILD_JAXP=false
export BUILD_JAXWS=false
export BUILD_CORBA=false


#要编译的版本
#export SKIP_DEBUG_BUILD=false
#export SKIP_FASTDEBUG_BUILD=true
export DEBUG_NAME=debug


#可以避开javaws和浏览器Java插件之类的部分build
BUILD_DEPLOY=false
#设置成false就不会build出包装包，因为包装包里有些奇怪的依赖
#但是即使不build出它也已经能得到完整的JDK映像，所以还是别build它好了
BUILD_INSTALL=false


#编译结果存放的路径
export ALT_OUTPUTDIR=/lib/jvm/myjdk


WARNINGS_ARE_ERRORS=


#卸载环境变量，避免诡异的事情发生
unset JAVA_HOME
unset CLASSPATH
unset JAVA_OPTS


#make 2>&1 | tee $ALT_OUTPUTDIR/build.log

