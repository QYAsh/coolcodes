<?php
require('../../common/incfiles/common.inc.php');
require('../../common/incfiles/admin.inc.php');
require('common/incfiles/config.inc.php');
require('common/incfiles/manage_config.inc.php');
jtbc_cms_islogin();
$mybody = jtbc_cms_admin_manage();
$myhead = jtbc_cms_web_head($admin_head);
$myfoot = jtbc_cms_web_foot($admin_foot);
$myhtml = $myhead . $mybody . $myfoot;
echo $myhtml;
?>
