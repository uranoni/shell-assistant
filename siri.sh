#!/bin/sh
reportTime(){
        line=`date +%R`
	mplayer  "http://tts.baidu.com/text2audio?lan=zh&pid=101&ie=UTF-8&text=现在时间是$line&spd=3"
}
createTodayDictory(){
	mkdir $(date "+%Y-%m-%d")
}
changeDtoHome(){
	cd ~
	crtdd="$( pwd )"
	echo $crtdd
}
listFileAll(){
	ls -l -a
}
findDictory(){
	echo "please input the dictory end  prinf where is it"
	read dictoryName
	test="$(find /home -type d -name $dictoryName)"
	echo $test
	cd $test
}
readFile(){
	clear 
        echo "please input which file name what's content you want to see it"
        read fileNmae
	theFile="$(find /home -type f -name $fileNmae)"
	echo "-------------------------------------------------------"
	echo "your file's location"
	echo $theFile
	echo "-------------------------------------------------------"
	echo "The content is as follows"
        cat $theFile 
	
}
cleanFile(){
	clear
	echo "please input which file or dictory do you want to delete"
	read garbageFile
        sudo rm -r $garbageFile 
}
SpeedNote(){
        clear
        echo "please input the file name and what do you want to memory"
	echo "input your file name"
        read notefile
	echo "please input your content"
	cat >$notefile
        
}

musicPlayer(){
	mplayer /home/csie/music/* -shuffle 
}
echo "0) answer now time"
echo "1) create today worl dictory"
echo "2) changeDtoHome"
echo "3) listFileAll"
echo "4) findDictory"
echo "5) readFile"
echo "6) cleanFIle"
echo "7) SpeedNote"
echo "8) musicPlayer"
read OP

case $OP in
	0) reportTime;;
	1) createTodayDictory;;
	2) changeDtoHome;;
	3) listFileAll;;
	4) findDictory;;
	5) readFile;;
	6) cleanFile;;
	7) SpeedNote;;
	8) musicPlayer;;
esac
