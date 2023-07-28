pkill -x ssh-agent
sleep 2
echo "old ssh agent process, killed"
sleep 2 
eval $(ssh-agent)
echo "new ssh-agent process has started" 
ssh-add ~/.ssh/disroot_github_imagine_rsa
sleep 2
echo "github ssh-key added"
git add .
git commit -m "Monkeys players with Debian is fun!"
git push git@github.com:imagineyourselfs/Debian
echo "Looks good to me! Banana Party!"
sleep 3
clear 
