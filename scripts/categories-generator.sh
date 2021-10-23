#!/bin/sh

postPath="./categories/"
input="./_data/categories.yml"

rm -r $postPath/
mkdir -p $postPath/

function gen {
postTitle=$1

fileName=$postTitle".md"
frontMatter="---
layout: default
title: Blog | $postTitle
permalink: /blog/$postTitle/
pagination:
  enabled: true
  category: $postTitle
---
{% include blogView.md paginator=paginator%}
"
# Generate File
newFilePath=$postPath/$fileName
echo "$frontMatter" > $newFilePath
}

while read a b category
do
  gen "$category"
done < $input
