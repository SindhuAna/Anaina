aws
apt install curl unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install
aws --version
aws configure
aws s3 mb s3://argocdbuck1540 --region ap-south-1
aws s3api put-bucket-versioning --bucket argocdbuck1540 --versioning-configuration Status=Enabled
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x ./kops
sudo mv ./kops /usr/local/bin/kops
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
mv ./kubectl /usr/local/bin/kubectl
ssh-keygen 
export NAME=newcluster.k8s.local
export KOPS_STATE_STORE=s3://argocdbuck1540 
kops create cluster --zones ap-south-1a ${NAME}
kops edit ig --name=newcluster.k8s.local nodes-ap-south-1a
kops edit ig --name=newcluster.k8s.local control-plane-ap-south-1a
kops update cluster --name ${NAME} --yes
kops validate cluster
kubectl get nodes
kops export kubecfg --name ${NAME} --state s3://argocdbuck1540
kubectl get nodes
kops export kubecfg --name $NAME --state s3://argocdbuck1540
kops validate cluster
kubectl get nodes
kops export kubecfg --name $NAME --state s3://argocdbuck1540
kubectl get nodes
kops export kubecfg --name newcluster.k8s.local --state s3://argocdbuck1540
kubectl get nodes
kops validate cluster
kops validate cluster --state s3://argocdbuck1540
kops get nodes
kops get nodes --state s3://argocdbuck1540
kubectl get nodes
kubectl config get-contexts
kubectl config use-context newcluster.k8s.local
kubectl config current-context
kops export kubecfg --name newcluster.k8s.local --state s3://argocdbuck1540
kubectl get nodes
kubectl config view
kubectl config set-credentials my-user --username=admin --password=Jesus@30
kubectl get nodes
kops create cluster --zones ap-south-1a --name sindhu.k8s.local --state s3://argocd1540
export AWS_ACCESS_KEY_ID=AKIA3FLDZY7KF5F3SIUC
export AWS_SECRET_ACCESS_KEY=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
export NAME1=sindhu.k8s.local
export KOPS_STATE_STORE=s3://argocdbuck1540
kops create cluster --zones ap-south-1a --name sindhu.k8s.local --state s3://argocd1540
kops create cluster --zones ap-south-1a --name sindhu.k8s.local --state s3://argocdbuck1540
kops edit ig --name=sindhu.k8s.local nodes-ap-south-1a
kops edit ig --name=sindhu.k8s.local control-plane-ap-south-1a
kops edit cluster sindhu.k8s.local
kops update cluster --name sindhu.k8s.local --yes --admin
kops validate cluster
kubectl get nodes
kubectl config get-contexts
kubectl config use-context newcluster.k8s.local
kubectl config get-contexts
kubectl get nodes
kubectl config use-context sindhu.k8s.local
kubectl create namespace argocd
# Kubectl get svc -n argocd
# Kubectl get svc
kubectl get svc -n argocd
#kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}’
kubectl get svc -n argocd
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}’
kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'
kubectl get svc -n argocd
kubectl -n argocd get secret argocd-inital-admin-secret -o    jsonpath="{.data.password}" | base64 -d
kubectl -n argocd get secret argocd-inital-admin-secret -o 
kubectl -n argocd get secret argocd-inital-admin-secret -o
kubectl -n argocd get secret argocd-initial-admin-secret -o    jsonpath="{.data.password}" | base64 -d
git --version
git config --global user.name "SindhuAna"
git config --global user.email "sindhubaiyu15@gmail.com"
git remote add origin https://github.com/SindhuAna/Anaina.git
git remote add origin
git remote add origin https://github.com/SindhuAna/Newrepo.git
git init
git remote add origin https://github.com/SindhuAna/Anaina.git
git push -u origin master
git push
git push -u origin main
git branch
git push -u orgin main
git push -u origin main
vi myfile.yml
ls
cat myfile.yml 
vi myfile.yml 
ls
cat myfile.yml 
