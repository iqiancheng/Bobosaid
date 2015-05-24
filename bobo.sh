#####################################
#   BACKUP  SOURCE
#####################################
var=`date +%Y-%m-%d" "%H:%M:%S`;
# track
git add . --all;
git commit -m "update source at ${var} via shell.";

#合并代码
git pull origin master;
git merge origin/master;
#push
git push origin master;


#####################################
#   DEPLOY
#####################################
#深度清理
#:rm public;db.json;.deploy_git
#清理
hexo clean;
#构建
hexo g;
#添加README
cp README.md public/;
#部署到远程服务器
hexo d;
#运行本地服务
hexo s 
