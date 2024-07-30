
name=$1
root=./_experiments
sub_root="${root}/${name}"

python -m graphrag.index --root $sub_root
