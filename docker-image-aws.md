## Install Docker service

ssh -i testkeypair.pem ec2-user@13.50.101.135
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
exit
ssh -i testkeypair.pem ec2-user@13.50.101.135

## Download and run Docker image

docker login
elalienx
dckr_pat_9SKvSOWgYVQ_ClgbmMckIJvb6tc
docker pull elalienx/wordcloud_backend:1.4
docker run -d -p 8000:8000 elalienx/wordcloud_backend:1.4
