#
# SMB Backup (for Windows clients)
#

$Conf{XferMethod} = 'smb';

$Conf{SmbShareName} = ['C$', 'MyShare'];

# if needed set a user name and password to access the remote shares
#$Conf{SmbShareUserName} = '';
#$Conf{SmbSharePasswd} = '';
# if you want anonymous login under XP, you should set $Conf{SmbShareUserName}
# to something (like 'guest').
