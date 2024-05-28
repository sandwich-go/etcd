FROM bitnami/etcd:3.5.13

COPY etcd /opt/bitnami/etcd/bin/etcd
#RUN chmod +x /opt/bitnami/etcd/bin/etcd
COPY etcdctl /opt/bitnami/etcd/bin/etcdctl
#RUN chmod +x /opt/bitnami/etcd/bin/etcdctl

# 设置默认环境变量
ENV ALLOW_NONE_AUTHENTICATION=yes

EXPOSE 2379 2380

WORKDIR /opt/bitnami/etcd
USER 1001
ENTRYPOINT [ "/opt/bitnami/scripts/etcd/entrypoint.sh" ]
CMD [ "/opt/bitnami/scripts/etcd/run.sh" ]
