#!/bin/bash

BIRed='\033[1;91m'             # Red
BIGreen='\033[1;92m'           # Green
BIYellow='\033[1;93m'          # Yellow
BIBlue='\033[1;94m'            # Blue
BIPurple='\033[1;95m'          # Purple
BICyan='\033[1;96m'            # Cyan
NORMAL="\033[0;39m"

clear
target="None"
my_head()
{ 

 echo -e $BIBlue"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
         echo -e " Automation Tool to automate day to day Unix Tasks.. !! \c "
         echo -e "\tTargets Servers : $target"
         echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"$NORMAL

}



while true
do
my_head
  echo -e $BIRed" Please select from the following options \n"
  echo -e " 1. Pre-Validation \n"
  echo -e " 2. User Administration \n"
  echo -e " 3. Run Ad Hoc Commands \n"
  echo -e " 4. Disk Alert \n"
  echo -e " 5. Services \n"
  echo -e " 6. Health Check Statistics \n"
  echo -e " 22. Options  \n"
  echo -e " 0. Exit \n"$NORMAL
  read cho
  case $cho in

  
  0)
  break
  ;;
  1)
  if [ $target = "None" ]; then
    echo -e "Select Target Servers from Option 22"
    read dummy
    else
  echo -e " Welcome to pre-validation \n"
                  cd /home/mari/shell_scripting/prevalidation
                  cat prevalid.yml | sed "s/abcd/$target/g" > pre_valid_scr.yml1
                  ansible-playbook pre_valid_scr.yml1
  sleep 4
  fi
  ;;
  2)
  if [ $target = "None" ]; then
    echo -e "Select Target Servers from Option 22"
    read dummy
    else 
  while true
  do 
    my_head
    echo -e $BIPurple" 1. User Creation \n"
    echo -e " 2. User Removal \n"
    echo -e " 3. Group Add \n"
    echo -e " 0. Exit \n"$NORMAL
    read cho
    case $cho in

   0)
   clear
   break
   ;;
   1)
   echo -e $BIYellow"######################################################################" $NORMAL
   echo -e $BIGreen"Usercreation Scripts for Unix Servers ################################" $NORMAL
   echo -e $BIYellow"######################################################################" $NORMAL 
               cd /home/mari/shell_scripting/usercreation
               cat usercr1.yml | sed "s/abcd/$target/g" > usercr3.yml
               ./scr2
               sleep 3
   ;;
   2)
               cd /home/mari/shell_scripting/userdeletion
               cat userdel1.yml | sed "s/abcd/$target/g" > userdel3.yml
               ./scr1
   sleep 3
   ;;
   3)
               cd /home/mari/shell_scripting/groupadd
               cat groupadd1.yml | sed "s/abcd/$target/g" > groupadd3.yml
               ./scr
   sleep 3
   ;;
   *)
   echo -e "Wrong Choice ....!!!! \n"
   read dummy
   continue
   ;;
   esac
   done
  fi
  ;;
  3)
  if [ $target = "None" ]; then
    echo -e "Select Target Servers from Option 22"
    read dummy
    
  else
  echo -e " Welcome to Ad Hoc Commands \n"
  sleep 4
  fi
  ;;

  6)
   if [ $target = "None" ]; then
      echo -e "Select Target Servers from Option 22"
    read dummy
  else     
    while true
            do
                       echo -e "   "
                       echo -e $BIPurple" 1. Memory Utilization \n "
                                echo -e " 2. CPU Utilization \n "
                                echo -e " 3. Overall I/O Activities \n"
                                echo -e " 4. Reports run queue and load average \n"
                                echo -e " 5. Report network statistics \n"
                                echo -e " 6. Top CPU Consuming Process \n"
                                echo -e " 7. Top Memory Consuming Process \n"
                                echo -e " 8. Shared Memory Statistic \n"
                                echo -e " 9. Capturing performance Statistics \n"
                                echo -e " 10.Packets capturing using tcpdump \n"
                                echo -e " 0. Exit \n "$NORMAL
                                echo -e " Enter your Choice : \c"
                                read cho 
                                 case $cho in

                               0)
                                    clear
                                    break
                                     ;;
                               1)
                                clear
echo -e $BIYellow"######################################################################" $NORMAL
echo -e $BIGreen"Real Live Memory Utilization Report###################################" $NORMAL
echo -e $BIYellow"######################################################################" $NORMAL
                               echo "  "
                               ansible $target -m shell -a "sar -r 1 3"
                               echo "  "
echo -e "kbmemfree: This shows the amount of free memory"
echo -e "Kbmemused: Memory used"
echo -e "%memused:  Percentage of memory used"
echo -e "kbbuffers: Buffer memory used by the kernel"
echo -e "kbcached:  Cached memory used by the kernel"
echo -e "Most likely youíll focus on 'kbmemfree' and 'kbmemused' for free and used memory. \n"
                              sleep 5
                              clear
                              ;;
                              2)
                               clear
echo -e $BIYellow"######################################################################" $NORMAL
echo -e $BIGreen"Real Live CPU Utilization Report #####################################" $NORMAL
echo -e $BIYellow"######################################################################" $NORMAL
                              echo -e "  "
                              ansible $target -m shell -a "sar -u 1 3"
                              echo -e "  "
echo -e "%user   :This shows the total time that the processor is spending on different process"
echo -e "%sys    :This shows the percentage of time spend by the processor for operating system tasks"
echo -e "%iowait :The name iowait itself suggests that its the time spend by processor waiting for devices(input and output)"
echo -e "%steal  :This column shows the amount to time spend by a CPU (which is virtualized), for resources from the physical CPU"
echo -e "%idle   :This suggests the idle time spend by the processor \n"
                              sleep 5
                              clear
                              ;;
                              5)
                             clear
echo -e $BIYellow"######################################################################" $NORMAL
echo -e $BIGreen"Report network statistics ############################################" $NORMAL
echo -e $BIYellow"######################################################################" $NORMAL
                            echo " "
                            ansible $target -m shell -a "sar -n DEV 1 1"
                            echo " "
echo -e "IFACE   :Stands for the nic card interface name"
echo -e "rxpck/s :This shows the total packets received per second"
echo -e "txpck/s :Transmitted packets per second"
echo -e "rxcmp/s :Compressed packets received"
echo -e "txcmp/s :Compressed packets transmitted"
echo -e "rxmcst/s:Packets multicasted per second \n"
                            echo " "
                            sleep 5
                            clear
                            ;;
                             6)
                            clear
echo -e $BIYellow"######################################################################" $NORMAL
echo -e $BIGreen"Top CPU Consuming Process ############################################" $NORMAL
echo -e $BIYellow"######################################################################" $NORMAL
                            echo " "
                            ansible $target -m shell -a "ps -eo pid,user,ppid,cmd,%mem,%cpu --sort=-%cpu | head"
                            echo " "
                            sleep 5
                            #clear
                            ;;
                             7)
                            clear
echo -e $BIYellow"######################################################################" $NORMAL
echo -e $BIGreen"Top Memory Consuming Process #########################################" $NORMAL
echo -e $BIYellow"######################################################################" $NORMAL
                            echo " "
                            ansible $target -m shell -a "ps -eo rss,vsz,pid,cputime,cmd --width 100 --sort rss,vsz | tail --lines 10"
                            echo " "
                            sleep 5
                           # clear
                            ;;
                            8)
                            clear
echo -e $BIYellow"######################################################################" $NORMAL
echo -e $BIGreen"Shared Memory Statistics #############################################" $NORMAL
echo -e $BIYellow"######################################################################" $NORMAL
                            echo " "
                            ansible $target -m shell -a "ipcs -ma"
                            echo " "
                            sleep 5
                            #clear
                              esac
                              done       
       fi                   
   ;;
   22)
     while true
     do 
     clear
     my_head
     echo -e " 1. Target server \n"
     echo -e " 0. Exit \n"
     echo -e " Enter your choice: \c"
     read chr
     case $chr in
  
     0)
       clear
       break 
       ;;
     1) 
       echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
       echo -e " Availbale Env: All --> for all server in the Env or Host IP"
       cat /etc/ansible/hosts | grep "\["|sed "s/\[/ /g" |sed "s/\]/ /g"
       echo -e "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
       echo -e " Enter your  choice: \c"
       read target
       ;;
     *)
       echo -e  "Wrong Choice....!!!!! \n"
       read dummy
       continue
       ;;
       esac
       done
       ;;
  *)
  echo -e  "Wrong Choice....!!!!! \n"
  read dummy
  continue
  ;;
  esac
done

