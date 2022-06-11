#!/bin/bash

function kernel () {
			#RED HAT: cat /etc/redhat-release
			KERNEL_VERSION_UBUNTU=`uname -r`
			KERNEL_VERSION_CENTOS=`uname -r`
			if [ -f /etc/os-release ]
			then
				echo "kernel version: $KERNEL_VERSION_UBUNTU"
			else
				echo "kernel version: $KERNEL_VERSION_CENTOS"
			fi
		
} 
kernel


