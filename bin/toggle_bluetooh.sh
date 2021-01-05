 bluetoothctl info 70:26:05:D0:1B:C6  | grep "Connected: yes" >/dev/null
 if [ $? -eq 0 ]; then
   echo -e '\Uf025' 
    if [ "$1" == "toggle" ]; then
        bluetoothctl disconnect 70:26:05:D0:1B:C6 >/dev/null
    fi    
else
   echo -e '-\Uf025-'
    if [ "$1" == "toggle" ]; then
       bluetoothctl connect 70:26:05:D0:1B:C6 >/dev/null
    fi
fi