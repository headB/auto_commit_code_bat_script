xcopy id_rsa %homedrive%%homepath%\.ssh /Y
xcopy id_rsa.pub %homedrive%%homepath%\.ssh /Y


echo  %~d0 > timer_task.bat
echo cd %cd% >> timer_task.bat
echo git pull >>   timer_task.bat
echo git add -A  >> timer_task.bat
echo git add . >> timer_task.bat
echo git commit -m "10 minutes auto commit" >> timer_task.bat
echo git push -u origin master >> timer_task.bat

xcopy timer_task.bat %homedrive%%homepath%\.ssh /Y
xcopy known_hosts %homedrive%%homepath%\.ssh /Y

echo "复制完成,感谢你的配合"

echo "定义提交作业代码完成,感谢你的配合,作业会按一定的频率提交到服务器"


echo "现在初始化git工具"

git config --global user.email "%s@qq.com"
git config --global user.name "%s"
echo "first time to commit homework" > README.md
git init 
git remote add origin git@192.168.113.107:root/java_homework.git
git pull
git add -A
git add .

git commit -m "first time to commit homework"

git push -u origin master


echo "git初始化完成!恭喜,下一步是点击第4步,创建定时任务!"

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("第4步,创建定义任务 - .bat","","","runas",1)(window.close)

echo "如果都确定创建成功的话,就可以按Enter键,之后就会自动删除多余的文件."
@pause
del   id_rsa
del   id_rsa.pub
del   timer_task.bat
del   known_hosts
del   第1步,先看我,请点击我,鞭挞我.txt
del   第3步,看完说明书之后点击我.bat
