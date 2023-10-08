#!/bin/bash
echo "*** my_grep test ***"


echo "*** no flags ***"


echo "*** 1 file"
grep This test.txt > grep_orig_result.txt
./my_grep This test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** 1 f1 error"
grep This f1 > grep_orig_result.txt
./my_grep This f1 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** 1 file, 2 file ***"
grep This test.txt my_grep.c > grep_orig_result.txt
./my_grep This test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** 1 file, 2 file, 3 file ***"
grep This test.txt my_grep.c test.txt > grep_orig_result.txt
./my_grep This test.txt my_grep.c test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** f1 error, 1 file, 2 file, 3 file, f2 error ***"
grep This f1 test.txt my_grep.c test.txt f2 > grep_orig_result.txt
./my_grep This f1 test.txt my_grep.c test.txt f2 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** f1 error, s1, 1 file, 2 file, 3 file, f2 error ***"
grep f1 This test.txt my_grep.c test.txt f2 > grep_orig_result.txt
./my_grep f1 This test.txt my_grep.c test.txt f2 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** 1 f1 error, 2 file ***"
grep This f1 my_grep.c > grep_orig_result.txt
./my_grep This f1 my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** 1 file, f2 error ***"
grep This test.txt f2 > grep_orig_result.txt
./my_grep This test.txt f2 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt





echo "*** 1 flag *** "


echo "*** s flag ***"

echo "*** -s s1 f1 error ***"
grep -s This f1 > grep_orig_result.txt
./my_grep -s This f1 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -s f1 error ***"
grep  This -s f1 > grep_orig_result.txt
./my_grep  This -s f1 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -s s1 f1 error, 2 file ***"
grep -s This f1 my_grep.c > grep_orig_result.txt
./my_grep -s This f1 my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -s f1 error, 2 file ***"
grep This -s f1 my_grep.c > grep_orig_result.txt
./my_grep This -s f1 my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -s s1 1 file,  f2 error ***"
grep -s This test.txt f2 > grep_orig_result.txt
./my_grep -s This test.txt f2 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -s 1 file, f2 error ***"
grep This -s test.txt f2 > grep_orig_result.txt
./my_grep This -s test.txt f2 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt




echo "*** n flags ***"

echo "*** -n f1 file ***"
grep -n This test.txt > grep_orig_result.txt
./my_grep -n This test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -n s1 f1 file ***"
grep -n This test.txt > grep_orig_result.txt
./my_grep -n This test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -n f1 file ***"
grep This -n test.txt > grep_orig_result.txt
./my_grep This -n test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt


echo "*** -n s1 f1 file, f2 file ***"
grep -n This test.txt my_grep.c > grep_orig_result.txt
./my_grep -n This test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -n f1 file, f2 file ***"
grep This -n test.txt my_grep.c > grep_orig_result.txt
./my_grep This -n test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -n s1 f1 error ***"
grep -n This f1 > grep_orig_result.txt
./my_grep -n This f1 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -n f1 error ***"
grep This -n f1 > grep_orig_result.txt
./my_grep This -n f1 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt





echo "*** h flag ***"


echo "*** -h s1 f1 file ***"
grep -h This test.txt > grep_orig_result.txt
./my_grep -h This test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -h f1 file ***"
grep This -h test.txt > grep_orig_result.txt
./my_grep This -h test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -h s1 f1 file, f2 file ***"
grep -h This test.txt my_grep.c > grep_orig_result.txt
./my_grep -h This test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -h f1 file, f2 file ***"
grep This -h test.txt my_grep.c > grep_orig_result.txt
./my_grep This -h test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt


echo "*** -h s1 f1 error, f2 file ***"
grep -h This f1 my_grep.c > grep_orig_result.txt
./my_grep -h This f1 my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -h s1 f1 file, f2 error ***"
grep -h This test.txt f2 > grep_orig_result.txt
./my_grep -h This test.txt f2 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt






echo "*** c flag ***"

echo "*** -c s1 f1 file"
grep -c This test.txt > grep_orig_result.txt
./my_grep -c This test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -c f1 file"
grep This -c test.txt > grep_orig_result.txt
./my_grep This -c test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -c s1 f1 file, f2 file"
grep -c This test.txt my_grep.c > grep_orig_result.txt
./my_grep -c This test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -c f1 file, f2 file"
grep This -c test.txt my_grep.c > grep_orig_result.txt
./my_grep This -c test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -c s1 f1 error"
grep -c This f1 > grep_orig_result.txt
./my_grep -c This f1 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -c s1 f1 error , f2 file"
grep -c This f1 test.txt > grep_orig_result.txt
./my_grep -c This f1 test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -c s1 f1 file, f2 error"
grep -c This test.txt f2 > grep_orig_result.txt
./my_grep -c This test.txt f2 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt


echo "*** s1 -c f1 file, f2 file, f3 error"
grep This -c test.txt my_grep.c f3 > grep_orig_result.txt
./my_grep This -c test.txt my_grep.c f3 > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt


echo "*** l flag ***"

echo "*** -l s1 f1 file"
grep -l This test.txt > grep_orig_result.txt
./my_grep -l This test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -l f1 file"
grep This -l test.txt > grep_orig_result.txt
./my_grep This -l test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -l s1 f1 file, f2 file"
grep -l This test.txt my_grep.c > grep_orig_result.txt
./my_grep -l This test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -l f1 file, f2 file"
grep This -l test.txt my_grep.c > grep_orig_result.txt
./my_grep This -l test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt





echo "*** e flag ***"

echo "*** -e s1 f1 file"
grep -e This test.txt > grep_orig_result.txt
./my_grep -e This test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -e s1 f1 file, f2 file"
grep -e This test.txt my_grep.c > grep_orig_result.txt
./my_grep -e This test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -e f1 file, f2 file"
grep This -e test.txt my_grep.c > grep_orig_result.txt
./my_grep This -e test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt


echo "*** -e s1 -e s2 f1 file"
grep -e This -e define test.txt > grep_orig_result.txt
./my_grep -e This -e define test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -e s1 -e s2 f1 file, f2 file"
grep -e This -e define test.txt my_grep.c > grep_orig_result.txt
./my_grep -e This -e define test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -e -e s2 f1 file, f2 file"
grep This -e -e define test.txt my_grep.c > grep_orig_result.txt
./my_grep This -e  -e define test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt





echo "*** f flag ***"


echo "*** -f fs f1 file"
grep -f sample test.txt > grep_orig_result.txt
./my_grep -f sample test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -f fs f1 file, f2 file"
grep -f sample test.txt my_grep.c > grep_orig_result.txt
./my_grep -f sample test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -if fs f1 file, f2 file"
grep -if sample test.txt my_grep.c > grep_orig_result.txt
./my_grep -if sample test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt






echo "*** i flag ***"


echo "*** -i s1 f1 file"
grep -i tHis test.txt > grep_orig_result.txt
./my_grep -i thIS test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt


echo "*** -i s1 f1 file, f2 file"
grep -i ThIs test.txt my_grep.c > grep_orig_result.txt
./my_grep -i ThiS test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt








echo "*** v flag ***"


echo "*** -v s1 f1 file"
grep -v This test.txt > grep_orig_result.txt
./my_grep -v This test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** s1 -v f1 file"
grep  This -v test.txt > grep_orig_result.txt
./my_grep This -v test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt


echo "*** -v s1 f1 file, f2 file"
grep -v This test.txt my_grep.c > grep_orig_result.txt
./my_grep -v This test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "***  s1 -v f1 file, f2 file"
grep This -v test.txt my_grep.c > grep_orig_result.txt
./my_grep This -v test.txt my_grep.c > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt




echo "*** o flag ***"


echo "*** -o s1 f1 file"
grep -o This test.txt > grep_orig_result.txt
./my_grep -o This test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt

echo "*** -o s1 f1 file, f2 file"
grep -o This test.txt test.txt  > grep_orig_result.txt
./my_grep -o This test.txt test.txt > my_grep_result.txt
if diff -q grep_orig_result.txt my_grep_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm grep_orig_result.txt my_grep_result.txt
