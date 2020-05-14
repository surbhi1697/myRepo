#!/bin/sh
score=0

grunt jshint
if [ $? -eq 0 ] ; then 
 score=$((score+20)) 
fi

rm dest/js/*
 grunt uglify; 
if [ $? -eq 0 ] ; then 
    if [ -e "dest/js/routing.js" ]; then
        src1= wc -c <  "src/js/routing.js"
        dest1= wc -c <  "dest/js/routing.js"
            if [ $dest1 -lt	 $src1 ]; then
                score=$((score+15)) 
            fi
    fi

      if [ -e "dest/js/form.js" ]; then
        src1= wc -c <  "src/js/form.js"
        dest1= wc -c <  "dest/js/form.js"
            if [ $dest1 -lt	 $src1 ]; then
                score=$((score+10)) 
            fi
      fi
    
    if [ -e "dest/js/management.js" ]; then
        src1= wc -c <  "src/js/management.js"
        dest1= wc -c <  "dest/js/management.js"
            if [ $dest1 -lt	 $src1 ]; then
                score=$((score+10)) 
            fi
      fi
fi

grunt connect
if [ $? -eq 0 ] ; then 
 score=$((score+10)) 
fi


timeout 10s grunt watch; 
 if [ $? -eq 124 ] ; then 
 score=$((score+15)) 
 fi 
rm app.zip;
grunt compress
if [ $? -eq 0 ] ; then 
  if [ -e "app.zip" ]; then
     score=$((score+20)) 
  fi
fi

echo "FS_SCORE:$score%"
