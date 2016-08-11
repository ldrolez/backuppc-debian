#
# Mysql backup over ssh
#
# You should generate an SSH key pair to allow the local backuppc user
# to connect as root on the target host.
# Please refer to the BackupPC's manual for details
#
# Replace $dbuser and $dbpasswd with appropriate values to dump your database
# You should also create the /var/backup-mysql/ directory.
#

$Conf{XferMethod} = 'tar';

$Conf{BackupFilesOnly} = [ '/var/backup-mysql/' ]; 

$Conf{DumpPreUserCmd}     = '$sshPath -l root $host mysqldump \
-u $dbuser -p$dbpasswd --all-databases --add-locks > /var/backup-mysql/backup-all-databases.sql' 
