schtasks /create /TN timer_task   /SC MINUTE /MO 10  /NP /F /TR "%homedrive%%homepath%\.ssh\timer_task.bat 
echo "��۲��Ϸ�����ʾ,�����ʾ��successful�����ɹ��ȵ������ͱ�ʾ�����ɹ�"
echo "������Ǵ���ʧ��,����ϵ�ڳ�����ʦ�������������"
@pause