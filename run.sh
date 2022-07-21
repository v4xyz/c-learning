work_dir="/usr/src/c-learning"

if test $OS = 'Windows_NT'; then
  win_path=`pwd|cut -c 2`:`pwd|cut -c 3-`
  echo $win_path
  docker run -itv $win_path:$work_dir -w /$work_dir gcc:4.9
else
  echo `pwd`
  docker run -itv `pwd`:$work_dir -w $work_dir gcc:4.9
fi 