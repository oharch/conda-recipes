cat test.pl
sed "s/catdir(\$Bin, 'Scripts')/catfile(\$Bin)/g" test.pl