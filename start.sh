if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ImSuri919/DQ-Tom-.git /DQ-Tom-
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DQ-Tom-
fi
cd /DQ-Tom-
pip3 install -U -r requirements.txt
echo "Starting DQ-Tom-...."
python3 bot.py
