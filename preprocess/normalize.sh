moses=~/software/mosesdecoder/scripts/tokenizer/
normalize=$moses/normalize-punctuation.perl

in_dir=../processed_data/crawler/nejm/articles/
out_dir=../processed_data/preprocess/normalize/
mkdir -p $out_dir

for f in $in_dir/*/*/*.filt.*; do
	echo $f
	out_fn=$(basename $f)
	cat $f | $normalize | awk NF > $out_dir/$out_fn
done