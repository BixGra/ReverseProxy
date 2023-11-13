echo "build . -t myproxy -f myproxy.Dockerfile"

docker build . -t myproxy -f myproxy.Dockerfile

echo "docker build . -t app1 -f app1.Dockerfile"

docker build . -t app1 -f app1.Dockerfile

echo "docker build . -t app2 -f app2.Dockerfile"

docker build . -t app2 -f app2.Dockerfile