echo ""
echo ""
echo "so you installed arch?"
echo "it's time to make it nice"
echo ""
echo "let's begin from the zeros"
echo ""
read -s -p "enter your sudo password : " ZEROSPASSWORD
echo "#!/bin/bash" > /tmp/askpass.sh
printf 'echo %q\n' "$ZEROSPASSWORD" >> /tmp/askpass.sh
chmod 500 /tmp/askpass.sh
export SUDO_ASKPASS=/tmp/askpass.sh
echo ""
echo ""
source install/init
echo ""
echo ""
sudo -A rm /tmp/askpass.sh
unset SUDO_ASKPASS
