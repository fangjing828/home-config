#!bin/sh
MVN_DIR=~/.m2

# 1 更新 mvn bin 文件
# 1.1 删除已存在的 mvn bin 文件
if [ -d $MVN_DIR/maven ]
then
    rm -r $MVN_DIR/maven
fi

#1.2 创建 mvn bin 文件
mkdir $MVN_DIR/maven
unzip -o -q maven.zip -d $MVN_DIR/
echo "Install maven bin"

# 2 更新 mvn settings.xml
cp settings.xml $MVN_DIR/settings.xml
echo "Install maven settings.xml"
