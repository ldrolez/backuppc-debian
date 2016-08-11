#
# Tar backup over ssh
#
# You should generate an SSH key pair to allow the local backuppc user
# to connect as root on the target host.
# Please refer to the BackupPC's manual for details
#

$Conf{XferMethod} = 'tar';

$Conf{BackupFilesOnly} = [ '/onedir', '/anotherdir' ]; 
