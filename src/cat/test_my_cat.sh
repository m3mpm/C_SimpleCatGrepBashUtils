#!/bin/bash
echo "*** my_cat test ***"
echo "#1 test no flags"
cat test_cat.txt > cat_orig_result.txt
./my_cat test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** 1 flags ***"
echo " *** -b ***"
cat -b test_cat.txt > cat_orig_result.txt
./my_cat -b test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -e ***"
cat -e test_cat.txt > cat_orig_result.txt
./my_cat -e test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -n ***"
cat -n test_cat.txt > cat_orig_result.txt
./my_cat -n test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -s ***"
cat -s test_cat.txt > cat_orig_result.txt
./my_cat -s test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -t ***"
cat -t test_cat.txt > cat_orig_result.txt
./my_cat -t test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -v ***"
cat -v test_cat.txt > cat_orig_result.txt
./my_cat -v test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo "*** 2flags ***"
echo " *** -be ***"
cat -be test_cat.txt > cat_orig_result.txt
./my_cat -be test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bn ***"
cat -bn test_cat.txt > cat_orig_result.txt
./my_cat -bn test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bs ***"
cat -v test_cat.txt > cat_orig_result.txt
./my_cat -v test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bt ***"
cat -bt test_cat.txt > cat_orig_result.txt
./my_cat -bt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -en ***"
cat -en test_cat.txt > cat_orig_result.txt
./my_cat -en test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -es ***"
cat -es test_cat.txt > cat_orig_result.txt
./my_cat -es test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -et ***"
cat -et test_cat.txt > cat_orig_result.txt
./my_cat -et test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -ns ***"
cat -ns test_cat.txt > cat_orig_result.txt
./my_cat -ns test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -nt ***"
cat -nt test_cat.txt > cat_orig_result.txt
./my_cat -nt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt
  
echo " *** -st ***"
cat -st test_cat.txt > cat_orig_result.txt
./my_cat -st test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo "*** 3flags ***"
echo " *** -ben ***"
cat -ben test_cat.txt > cat_orig_result.txt
./my_cat -ben test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bet ***"
cat -bet test_cat.txt > cat_orig_result.txt
./my_cat -bet test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bes ***"
cat -bes test_cat.txt > cat_orig_result.txt
./my_cat -bes test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -enb ***"
cat -enb test_cat.txt > cat_orig_result.txt
./my_cat -enb test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -ens ***"
cat -ens test_cat.txt > cat_orig_result.txt
./my_cat -ens test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -ent ***"
cat -ent test_cat.txt > cat_orig_result.txt
./my_cat -ent test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -nsb ***"
cat -nsb test_cat.txt > cat_orig_result.txt
./my_cat -nsb test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -nse ***"
cat -nse test_cat.txt > cat_orig_result.txt
./my_cat -nse test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -nst ***"
cat -nst test_cat.txt > cat_orig_result.txt
./my_cat -nst test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -stn ***"
cat -stn test_cat.txt > cat_orig_result.txt
./my_cat -stn test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -ste ***"
cat -ste test_cat.txt > cat_orig_result.txt
./my_cat -ste test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -stb ***"
cat -stb test_cat.txt > cat_orig_result.txt
./my_cat -stb test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo "*** 4 flags ***"
echo " *** -bens ***"
cat -bens test_cat.txt > cat_orig_result.txt
./my_cat -bens test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bent ***"
cat -bent test_cat.txt > cat_orig_result.txt
./my_cat -bent test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -enst ***"
cat -enst test_cat.txt > cat_orig_result.txt
./my_cat -enst test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -nstb ***"
cat -nstb test_cat.txt > cat_orig_result.txt
./my_cat -nstb test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** 5flags ***"

echo " *** -benst ***"
cat -benst test_cat.txt > cat_orig_result.txt
./my_cat -benst test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bents ***"
cat -bents test_cat.txt > cat_orig_result.txt
./my_cat -bents test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -besnt ***"
cat -besnt test_cat.txt > cat_orig_result.txt
./my_cat -besnt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bestn ***"
cat -bestn test_cat.txt > cat_orig_result.txt
./my_cat -bestn test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -betns ***"
cat -betns test_cat.txt > cat_orig_result.txt
./my_cat -betns test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -betsn ***"
cat -betsn test_cat.txt > cat_orig_result.txt
./my_cat -betsn test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bnest ***"
cat -bnest test_cat.txt > cat_orig_result.txt
./my_cat -bnest test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bnets ***"
cat -bnets test_cat.txt > cat_orig_result.txt
./my_cat -bnets test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bnset ***"
cat -bnset test_cat.txt > cat_orig_result.txt
./my_cat -bnset test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bnste ***"
cat -bnste test_cat.txt > cat_orig_result.txt
./my_cat -bnste test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt


echo " *** -bntes ***"
cat -bntes test_cat.txt > cat_orig_result.txt
./my_cat -bntes test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bntse ***"
cat -bntse test_cat.txt > cat_orig_result.txt
./my_cat -bntse test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bsent ***"
cat -bsent test_cat.txt > cat_orig_result.txt
./my_cat -bsent test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bsetn ***"
cat -bsetn test_cat.txt > cat_orig_result.txt
./my_cat -bsetn test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bsnet ***"
cat -bsnet test_cat.txt > cat_orig_result.txt
./my_cat -bsnet test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bsnte ***"
cat -bsnte test_cat.txt > cat_orig_result.txt
./my_cat -bsnte test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bsten ***"
cat -bsten test_cat.txt > cat_orig_result.txt
./my_cat -bsten test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -bstne ***"
cat -bstne test_cat.txt > cat_orig_result.txt
./my_cat -bstne test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -btens ***"
cat -btens test_cat.txt > cat_orig_result.txt
./my_cat -btens test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -btesn ***"
cat -btesn test_cat.txt > cat_orig_result.txt
./my_cat -btesn test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -btnes ***"
cat -btnes test_cat.txt > cat_orig_result.txt
./my_cat -btnes test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -btnse ***"
cat -btnse test_cat.txt > cat_orig_result.txt
./my_cat -btnse test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -btsen ***"
cat -btsen test_cat.txt > cat_orig_result.txt
./my_cat -btsen test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo " *** -btsne ***"
cat -btsne test_cat.txt > cat_orig_result.txt
./my_cat -btsne test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt


echo "*** my_cat_test_bin ***"
echo "*** no flags ***"
cat my_cat > cat_orig_result.txt
./my_cat my_cat > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt
  
echo "*** -n ***"
cat -n my_cat > cat_orig_result.txt
./my_cat -n my_cat > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo "*** -v ***"
cat -v my_cat > cat_orig_result.txt
./my_cat -v my_cat > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo "*** -t ***"
cat -t my_cat > cat_orig_result.txt
./my_cat -t my_cat > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt


echo "*** -b ***"
cat -b my_cat > cat_orig_result.txt
./my_cat -b my_cat > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo "*** -e ***"
cat -e my_cat > cat_orig_result.txt
./my_cat -e my_cat > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt

echo "*** -s ***"
cat -s my_cat > cat_orig_result.txt
./my_cat -s my_cat > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt


echo "*** my_cat_test_manyfiles ***"
echo " *** no flags ***"
cat test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt


echo " *** -b ***"
cat -b test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -b test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt


echo " *** -e ***"
cat -e test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -e test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -n ***"
cat -n test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -n test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -s ***"
cat -s test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -s test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -t ***"
cat -t test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -t test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -v ***"
cat -v test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -v test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt


echo " *** -be ***"
cat -be test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -be test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -bn ***"
cat -bn test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -bn test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -bs ***"
cat -bs test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -bs test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -bt ***"
cat -bt test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -bt test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -en ***"
cat -en test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -en test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -es ***"
cat -es test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -es test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -et ***"
cat -et test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -et test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -ns ***"
cat -ns test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -ns test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -nt ***"
cat -nt test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -nt test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -st ***"
cat -st test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -st test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -ben ***"
cat -ben test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -ben test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -bes ***"
cat -bes test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -bes test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -bet ***"
cat -bet test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -bet test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -enb ***"
cat -enb test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -enb test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -ens ***"
cat -ens test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -ens test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt


echo " *** -ent ***"
cat -ent test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -ent test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -nsb ***"
cat -nsb test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -nsb test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -nse ***"
cat -nse test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -nse test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -nst ***"
cat -nst test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -nst test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -stn ***"
cat -stn test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -stn test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -ste ***"
cat -ste test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -ste test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -stb ***"
cat -stb test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -stb test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -bens ***"
cat -bens test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -bens test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -bent ***"
cat -bent test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -bent test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -enst ***"
cat -enst test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -enst test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt



echo " *** -nstb ***"
cat -nstb test_cat.txt test_cat.txt test_cat.txt > cat_orig_result.txt
./my_cat -nstb test_cat.txt test_cat.txt test_cat.txt > my_cat_result.txt
if diff -q cat_orig_result.txt my_cat_result.txt ; then
 echo "ok"
else
 echo "problems"
fi
rm cat_orig_result.txt my_cat_result.txt
