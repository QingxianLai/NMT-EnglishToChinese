#!/bin/bash

for f in $(find ./zh-en -name '*.xml'); do
    python xml_parser.py ${f}
done

cd zh-en
rm -rf text
mkdir text
mv *.text text

cd text
mv -f *2013.zh-en.en.* test.en
mv -f *2013.zh-en.zh.* test.zh

cat *.en.* > dev.en
cat *.zh.* > dev.zh

rm -rf *.text
cp *.en ../../en
cp *.zh ../../zh

cd ../..

python clean.py

mv train.zh zh
mv train.en en

cat zh/train.zh | python charaterize.py > zh/no_seg/train.no_seg.zh
cat zh/dev.zh | python charaterize.py > zh/no_seg/dev.no_seg.zh
cat zh/test.zh | python charaterize.py > zh/no_seg/test.no_seg.zh
