scp -P 2222 hw2.txt root@localhost:/usr/jobs/hw2
ssh root@localhost -p 2222 command "beeline -u jdbc:hive2://localhost:10000/HW1 -f /usr/jobs/hw2 --outputformat=csv2 > /usr/jobs/output.csv"
scp -P 2222 root@localhost:/usr/jobs/output.csv output\output.csv
ssh root@localhost -p 2222 command rm /usr/jobs/hw2
ssh root@localhost -p 2222 command rm /usr/jobs/output.csv
