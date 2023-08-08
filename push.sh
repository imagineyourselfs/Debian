pkill -x ssh-agent
sleep 2
echo "old ssh agent process, killed"
sleep 2 
eval $(ssh-agent)
echo "new ssh-agent process has started" 
ssh-add ~/.ssh/github_last_debian
sleep 2
echo "github ssh-key added"
git add .
git commit -m "Monkeys playing with Debian Linux!"
git push git@github.com:imagineyourselfs/Debian
sleep 3
clear 
echo "Looks good to me! Banana Party!"
