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

echo "�������,��л������"

echo "�����ύ��ҵ�������,��л������,��ҵ�ᰴһ����Ƶ���ύ��������"


echo "���ڳ�ʼ��git����"

git config --global user.email "%s@qq.com"
git config --global user.name "%s"
echo "first time to commit homework" > README.md
git init 
git remote add origin git@192.168.113.107:root/java_homework.git
git add -A
git add .

git commit -m "first time to commit homework"

git push -u origin master


echo "git��ʼ�����!��ϲ,��һ���ǵ����4��,������ʱ����!"

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("��4��,������������ - .bat","","","runas",1)(window.close)

echo "�����ȷ�������ɹ��Ļ�,�Ϳ��԰�Enter��,֮��ͻ��Զ�ɾ��������ļ�."
@pause
del   id_rsa
del   id_rsa.pub
del   timer_task.bat
del   known_hosts
del   ��1��,�ȿ���,������,��̢��.txt
del   ��3��,����˵����֮������.bat
