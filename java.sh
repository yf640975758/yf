tar -zxvf jdk-*.tar.gz  #解压

mkdir /opt/java   #新建文件夹

mv jdk1.* jdk       #重命名
mv jdk /opt/java  #移动文件夹

#设置环境变量
echo '#set java environment
export JAVA_HOME=/opt/java/jdk
export JRE_HOME=/opt/java/jdk/jre
export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$JAVA_HOME:$PATH' >> /etc/profile

sudo update-alternatives --install /opt/java java /opt/java/jdk/bin/java 300
sudo update-alternatives --install /opt/javac javac /opt/java/jdk/bin/javac 300 #设置系统默认JDK
