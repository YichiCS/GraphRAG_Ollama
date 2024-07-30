
name=$1
mode=$2


root=./_experiments
sub_root="${root}/${name}"

query="Tell me the relation ship between L2 Norm and CNN"

echo $query

python -m graphrag.query --root $sub_root --method $mode "${query}"