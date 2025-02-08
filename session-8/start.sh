#!/usr/bin/env zsh
re='^[1-8]+$';
hname=$(hostname -s);
hlast=${hname:0-1};

if ! [[ $hlast =~ $re ]] ; then
  declare -i rand=$RANDOM;
  declare -i assignement_num=$rand%8+1;
else
  declare -i hnum=$hlast;
  declare -i assignement_num=$hnum;
fi

assignement="session-8/assignement-8.$assignement_num";

clear;

echo "Starting Exam...";
echo "\e[43mRandomly selected assignement number [ $assignement_num ]\e[0m"

for i in {1..8}
do
  sleep 0.5;
  if [ -d "session-8/assignement-8.$i" ];
  then
    if [ "$assignement" = "session-8/assignement-8.$i" ];
    then
      echo -e "\e[1;32mKeeping:\e[0m assignement-8.$i";
    else
      echo -e "\e[1;31mDeleting:\e[0m assignement-8.$i";
      rm -r "session-8/assignement-8.$i";
    fi
  fi
done

echo "Moving files...";
mv $assignement/* session-8/;
rm -r $assignement;

echo "Deleting start.sh";
rm session-8/start.sh;

{
  git add .
  git commit -m "Exam start";
} &> /dev/null;

echo -e "\n-----EXAM START-----\n";
echo "- Complete at least 3 tasks including task 4 or 5.";
echo "- You are not allowed to talk to each others during the exam.";
echo "- However you can search on Google and in the docs.";
echo "- You have 1h30m, good luck !";
echo -e "\n\e[1;33m/!\ Don't forget to commit and push /!\ \e[0m\n";