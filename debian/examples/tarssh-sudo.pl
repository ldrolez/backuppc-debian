#
# Tar backup over ssh using SUDO with user 'backuppc'
#
# You should generate an SSH key pair to allow the local 'backuppc' user
# to connect as 'backuppc' on the target host.
# Please refer to the BackupPC's manual for key generation details.
#
# Then on the client host added the following line to 'sudoers' with 'visudo':
#    backuppc ALL=NOPASSWD: /bin/tar
#

$Conf{XferMethod} = 'tar';

$Conf{TarClientCmd} = '$sshPath -q -x -n -l backuppc $host'
                     . ' /usr/bin/env LC_ALL=C sudo $tarPath -c -v -f - -C $shareName+'
                     . ' --totals';
					  
$Conf{TarClientRestoreCmd} = '$sshPath -q -x -l backuppc $host'
                      . ' /usr/bin/env LC_ALL=C sudo $tarPath -x -p --numeric-owner --same-owner'
                      . ' -v -f - -C $shareName+';

$Conf{BackupFilesOnly} = [ '/onedir', '/anotherdir' ]; 
