
name=$1
root=./_experiments
setting=./_graph/settings/settings.yaml

sub_root="${root}/${name}"

python -m graphrag.index --root $sub_root --init
cp -f $setting $sub_root