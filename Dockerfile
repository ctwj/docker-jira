FROM cptactionhank/atlassian-jira-software:7.12.0

USER root

# 将代理破解包加入容器
COPY "t.jar" /opt/atlassian/jira/

# 设置启动加载代理包
RUN echo 'export CATALINA_OPTS="-javaagent:/opt/atlassian/jira/t.jar ${CATALINA_OPTS}"' >> /opt/atlassian/jira/bin/setenv.sh
