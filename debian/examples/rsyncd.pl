#
# Rsync Backup (with rsync daemon on the client)
#

$Conf{XferMethod} = 'rsyncd';

$Conf{RsyncShareName} = ['MyShare'];

# if needed set a user name and password to access the remote shares
#$Conf{RsyncdUserName} = '';
#$Conf{RsyncdPasswd} = '';
