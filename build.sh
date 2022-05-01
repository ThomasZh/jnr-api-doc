gitbook build
sed 's/if(m)/if(false)/g' _book/gitbook/theme.js > _book/gitbook/theme.js.tmp
mv _book/gitbook/theme.js.tmp _book/gitbook/theme.js

for file in _book/*.html
do
    if test -f $file
    then
        echo $file
        sed 's/\<a href="\.\/">/\<a href=\"index\.html">/g' $file > $file.tmp
        mv "$file.tmp" $file
    fi
done

for file in _book/*.html
do
    if test -f $file
    then
        echo $file
        sed 's/data-path="\.\/"/data-path="index\.html"/g' $file > $file.tmp
        mv "$file.tmp" $file
    fi
done 