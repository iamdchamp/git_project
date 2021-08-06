cd /home/manishk/devops
git clone https://github.com/pandas-dev/pandas.git
git init
git add -A
DATE=$(date)
git commit -m "changes mad on $DATE"
git checkout develop
git log -5 --pretty=%an --name-only 1> gitlog_$(date +"%d_%m_%Y")
rm -rf .git
==============
crontab -e
0 15 * * * /home/manishk/commit.sh
