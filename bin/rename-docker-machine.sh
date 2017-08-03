(($#))  && sed -i s/`grep eval bin/deploy.sh | head -1| awk -F "env " '{print $2}'`/$1\)/g bin/deploy.sh
