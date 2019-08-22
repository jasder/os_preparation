echo "==============================="
echo "  Installing basic dev packages..."
echo "==============================="
yum install -y epel-release

#-----------------------------------------------------------------------------------------
# NTP update date time and hwclock to prevent mariadb cause systemd warning
#-----------------------------------------------------------------------------------------
yum remove -y chrony
yum install -y ntpdate
ntpdate pool.ntp.org
hwclock -w


#-----------------------------------------------------------------------------------------
#Package Install
#-----------------------------------------------------------------------------------------
# For NodeJS
yum install -y gcc-c++ make

# Basic dev packages
yum groupinstall -y "Development Tools"
yum install -y jwhois bash redhat-lsb screen git tree vim sysstat mtr net-tools wget openssl-devel bind-utils

# Basic debug tools - Enhanced tail / Enhanced grep
yum install -y multitail ack

# For SSL
yum install -y openssl openssl-libs openssl-devel libticonv-devel

# For sql server connection (freetds)
yum install -y freetds freetds-devel 
