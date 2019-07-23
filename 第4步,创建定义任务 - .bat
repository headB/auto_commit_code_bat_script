schtasks /create /TN timer_task   /SC MINUTE /MO 10  /NP /F /TR "%homedrive%%homepath%\.ssh\timer_task.bat 
echo "请观察上方的提示,如果提示有successful创建成功等等字样就表示创建成功"
echo "否则就是创建失败,请联系在场的老师帮你解决这个问题"
@pause