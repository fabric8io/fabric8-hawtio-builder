function gclonecd(){
  # clone repo and cd to git repo but removing the '.git' from the directory name
  dirname=$(basename $1)
  len=${#dirname}-4
  git clone $1 && cd $(echo "${dirname:0:$len}")
}

gclonecd $SOURCE_URI

npm install
bower update --allow-root
gulp site

docker build --rm -t $OUTPUT_REGISTRY/$OUTPUT_IMAGE .
docker push $OUTPUT_REGISTRY/$OUTPUT_IMAGE
