clear
#clone empty directory
git clone https://github.com/ch-stark/demo-chart.git && cd demo-chart/
mkdir ./helm-chart-sources
#create the chart 
helmoc create helm-chart-sources/helm-chart-test
helmoc lint helm-chart-sources/*
helm package helm-chart-sources/*
git add . &&  git commit -am 'push' 
git remote set-url origin git@github:ch-stark/demo-chart
git push origin
helmoc repo add myhelmrepo https://ch-stark.github.io/demo-chart/
helmoc  search repo  test

#clean
git pull origin
git rm -r *
git commit -am 'clean'
git push origin
eof
