#!/bin/bash
images=(kube-proxy:v1.13.3 kube-scheduler:v1.13.3 kube-controller-manager:v1.13.3 kube-apiserver:v1.13.3 etcd:3.2.24 coredns:1.2.6 pause:3.1)
for imageName in ${images[@]} ; do
docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
docker tag  registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName k8s.gcr.io/$imageName
docker rmi  registry.cn-hangzhou.aliyuncs.com/google_containers/$imageName
done
