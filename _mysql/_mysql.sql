SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE TABLE IF NOT EXISTS `jtbc_aboutus` (
  `abid` int(9) NOT NULL auto_increment,
  `ab_topic` varchar(50) default NULL,
  `ab_content` text,
  `ab_content_images_list` text,
  `ab_cttype` int(1) default '0',
  `ab_cp_note` int(1) default '0',
  `ab_cp_mode` int(1) default '0',
  `ab_cp_type` int(1) default '0',
  `ab_cp_num` int(9) default '0',
  `ab_time` datetime default NULL,
  `ab_hidden` int(1) default '0',
  `ab_update` int(1) default '0',
  `ab_good` int(1) default '0',
  `ab_count` int(9) default '0',
  `ab_lng` varchar(50) default NULL,
  PRIMARY KEY  (`abid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_admin` (
  `aid` int(9) NOT NULL auto_increment,
  `a_name` varchar(50) default NULL,
  `a_pword` varchar(50) default NULL,
  `a_popedom` varchar(255) default NULL,
  `a_lock` int(1) default '0',
  `a_lasttime` datetime default NULL,
  `a_lastip` varchar(50) default NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_admin_log` (
  `lid` int(9) NOT NULL auto_increment,
  `l_name` varchar(50) default NULL,
  `l_time` datetime default NULL,
  `l_ip` varchar(50) default NULL,
  `l_islogin` int(1) default '0',
  PRIMARY KEY  (`lid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_article` (
  `aid` int(9) NOT NULL auto_increment,
  `a_topic` varchar(50) default NULL,
  `a_content` text,
  `a_content_images_list` text,
  `a_cttype` int(1) default '0',
  `a_cp_note` int(1) default '0',
  `a_cp_mode` int(1) default '0',
  `a_cp_type` int(1) default '0',
  `a_cp_num` int(9) default '0',
  `a_time` datetime default NULL,
  `a_cls` text,
  `a_class` int(9) default '0',
  `a_hidden` int(1) default '0',
  `a_update` int(1) default '0',
  `a_good` int(1) default '0',
  `a_count` int(9) default '0',
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_download` (
  `did` int(9) NOT NULL auto_increment,
  `d_topic` varchar(50) default NULL,
  `d_cls` text,
  `d_class` int(9) default '0',
  `d_scont` text,
  `d_image` varchar(255) default NULL,
  `d_cttype` int(1) default '0',
  `d_content` text,
  `d_content_images_list` text,
  `d_size` int(9) default '0',
  `d_runco` varchar(255) default NULL,
  `d_star` int(9) default '0',
  `d_accredit` int(9) default '0',
  `d_lng` int(9) default '0',
  `d_link` varchar(255) default NULL,
  `d_author` varchar(255) default NULL,
  `d_urls` text,
  `d_hidden` int(1) default '0',
  `d_good` int(1) default '0',
  `d_time` datetime default NULL,
  `d_count` int(9) default '0',
  `d_update` int(1) default '0',
  PRIMARY KEY  (`did`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_expansion_js` (
  `jid` int(9) NOT NULL auto_increment,
  `j_topic` varchar(50) default NULL,
  `j_content` text,
  `j_retimetype` int(1) default '0',
  `j_retimevalue` int(9) default '0',
  `j_retime` datetime default NULL,
  `j_time` datetime default NULL,
  PRIMARY KEY  (`jid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_forum_blacklist` (
  `bid` int(9) NOT NULL auto_increment,
  `b_username` varchar(50) default NULL,
  `b_sid` int(9) default '0',
  `b_admin` varchar(50) default NULL,
  `b_time` datetime default NULL,
  `b_remark` varchar(255) default NULL,
  PRIMARY KEY  (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_forum_sort` (
  `sid` int(9) NOT NULL auto_increment,
  `s_sort` varchar(50) default NULL,
  `s_fid` varchar(255) default NULL,
  `s_fsid` int(9) default '0',
  `s_lng` varchar(50) default NULL,
  `s_order` int(9) default '0',
  `s_type` int(9) default '0',
  `s_mode` int(9) default '0',
  `s_ispop` int(9) default '0',
  `s_popedom` varchar(50) default NULL,
  `s_images` varchar(255) default NULL,
  `s_admin` varchar(255) default NULL,
  `s_rule` varchar(255) default NULL,
  `s_explain` varchar(255) default NULL,
  `s_attestation` varchar(255) default NULL,
  `s_hidden` int(1) default '0',
  `s_ntopic` int(9) default '0',
  `s_nnote` int(9) default '0',
  `s_today_ntopic` int(9) default '0',
  `s_today_date` datetime default NULL,
  `s_last_topic` varchar(50) default NULL,
  `s_last_tid` int(9) default '0',
  `s_last_time` datetime default NULL,
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_forum_topic` (
  `tid` int(9) NOT NULL auto_increment,
  `t_sid` int(9) default '0',
  `t_fid` int(9) default '0',
  `t_icon` int(9) default '0',
  `t_topic` varchar(50) default NULL,
  `t_color` varchar(50) default NULL,
  `t_b` int(1) default '0',
  `t_author` varchar(50) default NULL,
  `t_authorip` varchar(50) default NULL,
  `t_content` text,
  `t_content_files_list` text,
  `t_voteid` int(9) default '0',
  `t_ubb` int(1) default '0',
  `t_reply` int(9) default '0',
  `t_count` int(9) default '0',
  `t_time` datetime default NULL,
  `t_htop` int(1) default '0',
  `t_top` int(1) default '0',
  `t_lock` int(1) default '0',
  `t_elite` int(1) default '0',
  `t_hidden` int(1) default '0',
  `t_lasttime` datetime default NULL,
  `t_lastuser` varchar(50) default NULL,
  PRIMARY KEY  (`tid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_forum_vote` (
  `vid` int(9) NOT NULL auto_increment,
  `v_topic` varchar(50) default NULL,
  `v_type` int(9) default '0',
  `v_time` datetime default NULL,
  `v_day` int(9) default '0',
  PRIMARY KEY  (`vid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_forum_vote_data` (
  `vdid` int(9) NOT NULL auto_increment,
  `vd_topic` varchar(50) default NULL,
  `vd_fid` int(9) default '0',
  `vd_vid` int(9) default '0',
  `vd_count` int(9) default '0',
  PRIMARY KEY  (`vdid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_forum_vote_voter` (
  `vuid` int(9) NOT NULL auto_increment,
  `vu_fid` int(9) default '0',
  `vu_ip` varchar(50) default NULL,
  `vu_username` varchar(50) default NULL,
  `vu_data` varchar(255) default NULL,
  `vu_time` datetime default NULL,
  PRIMARY KEY  (`vuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_passport` (
  `pid` int(9) NOT NULL auto_increment,
  `p_username` varchar(50) default NULL,
  `p_password` varchar(50) default NULL,
  `p_email` varchar(50) default NULL,
  `p_city` varchar(50) default NULL,
  `p_sex` varchar(50) default NULL,
  `p_old` varchar(50) default NULL,
  `p_name` varchar(50) default NULL,
  `p_qq` varchar(50) default NULL,
  `p_msn` varchar(50) default NULL,
  `p_phone` varchar(50) default NULL,
  `p_homepage` varchar(255) default NULL,
  `p_code` varchar(50) default NULL,
  `p_address` varchar(255) default NULL,
  `p_emoney` int(9) default '0',
  `p_integral` int(9) default '0',
  `p_topic` int(9) default '0',
  `p_face` int(9) default '0',
  `p_face_u` int(1) default '0',
  `p_face_url` varchar(255) default NULL,
  `p_face_width` int(9) default '0',
  `p_face_height` int(9) default '0',
  `p_sign` varchar(255) default NULL,
  `p_forum_admin` int(1) default '0',
  `p_utype` int(9) default '0',
  `p_lock` int(1) default '0',
  `p_time` datetime default NULL,
  `p_lasttime` datetime default NULL,
  `p_pretime` datetime default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_passport_friend` (
  `feid` int(9) NOT NULL auto_increment,
  `fe_username` varchar(50) default NULL,
  `fe_name` varchar(50) default NULL,
  `fe_time` datetime default NULL,
  PRIMARY KEY  (`feid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_passport_message` (
  `mid` int(9) NOT NULL auto_increment,
  `m_topic` varchar(50) default NULL,
  `m_content` text,
  `m_read` int(1) default '0',
  `m_time` datetime default NULL,
  `m_len` int(9) default '0',
  `m_addresser` varchar(50) default NULL,
  `m_recipients` varchar(50) default NULL,
  PRIMARY KEY  (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_product` (
  `pid` int(9) NOT NULL auto_increment,
  `p_snum` varchar(50) default NULL,
  `p_topic` varchar(50) default NULL,
  `p_image` varchar(255) default NULL,
  `p_content` text,
  `p_content_images_list` text,
  `p_cttype` int(1) default '0',
  `p_time` datetime default NULL,
  `p_cls` text,
  `p_class` int(9) default '0',
  `p_hidden` int(1) default '0',
  `p_update` int(1) default '0',
  `p_good` int(1) default '0',
  `p_count` int(9) default '0',
  PRIMARY KEY  (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_shop` (
  `sid` int(9) NOT NULL auto_increment,
  `s_snum` varchar(50) default NULL,
  `s_topic` varchar(50) default NULL,
  `s_image` varchar(255) default NULL,
  `s_price` float default '0',
  `s_wprice` float default '0',
  `s_limitnum` int(9) default '0',
  `s_unit` varchar(50) default NULL,
  `s_content` text,
  `s_content_images_list` text,
  `s_cttype` int(1) default '0',
  `s_time` datetime default NULL,
  `s_cls` text,
  `s_class` int(9) default '0',
  `s_hidden` int(1) default '0',
  `s_update` int(1) default '0',
  `s_good` int(1) default '0',
  `s_count` int(9) default '0',
  PRIMARY KEY  (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_shopcart` (
  `scid` int(9) NOT NULL auto_increment,
  `sc_fid` text,
  `sc_allprice` float default '0',
  `sc_merchandiseprice` float default '0',
  `sc_trafficprice` float default '0',
  `sc_name` varchar(50) default NULL,
  `sc_address` varchar(255) default NULL,
  `sc_code` varchar(50) default NULL,
  `sc_phone` varchar(50) default NULL,
  `sc_email` varchar(50) default NULL,
  `sc_remark` text,
  `sc_payment` int(9) default '0',
  `sc_traffic` int(9) default '0',
  `sc_orderid` varchar(50) default NULL,
  `sc_prepaid` int(9) default '0',
  `sc_payid` varchar(50) default NULL,
  `sc_state` int(1) default '0',
  `sc_time` datetime default NULL,
  `sc_dtime` datetime default NULL,
  `sc_username` varchar(50) default NULL,
  PRIMARY KEY  (`scid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_support_gbook` (
  `gid` int(9) NOT NULL auto_increment,
  `g_author` varchar(50) default NULL,
  `g_authorip` varchar(50) default NULL,
  `g_sex` int(1) default '0',
  `g_qq` int(12) default '0',
  `g_face` int(9) default '0',
  `g_email` varchar(50) default NULL,
  `g_homepage` varchar(255) default NULL,
  `g_topic` varchar(50) default NULL,
  `g_content` text,
  `g_time` datetime default NULL,
  `g_reply` text,
  `g_replytime` datetime default NULL,
  `g_hidden` int(1) default '0',
  `g_lng` varchar(50) default NULL,
  PRIMARY KEY  (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_support_linkimages` (
  `lid` int(9) NOT NULL auto_increment,
  `l_topic` varchar(50) default NULL,
  `l_url` varchar(255) default NULL,
  `l_keyword` varchar(50) default NULL,
  `l_image` varchar(255) default NULL,
  `l_intro` varchar(255) default NULL,
  `l_time` datetime default NULL,
  PRIMARY KEY  (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_support_linktext` (
  `lid` int(9) NOT NULL auto_increment,
  `l_topic` varchar(50) default NULL,
  `l_url` varchar(255) default NULL,
  `l_keyword` varchar(50) default NULL,
  `l_intro` varchar(255) default NULL,
  `l_time` datetime default NULL,
  PRIMARY KEY  (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_support_review` (
  `rid` int(9) NOT NULL auto_increment,
  `r_author` varchar(50) default NULL,
  `r_authorip` varchar(50) default NULL,
  `r_content` text,
  `r_time` datetime default NULL,
  `r_keyword` varchar(50) default NULL,
  `r_fid` int(9) default '0',
  `r_hidden` int(1) default '0',
  PRIMARY KEY  (`rid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_support_vote` (
  `vid` int(9) NOT NULL auto_increment,
  `v_topic` varchar(50) default NULL,
  `v_type` int(1) default '0',
  `v_count` varchar(9) default '0',
  `v_starttime` datetime default NULL,
  `v_endtime` datetime default NULL,
  `v_lock` int(1) default '0',
  `v_time` datetime default NULL,
  PRIMARY KEY  (`vid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_support_vote_data` (
  `vdid` int(9) NOT NULL auto_increment,
  `vd_topic` varchar(50) default NULL,
  `vd_fid` int(9) default '0',
  `vd_vid` int(9) default '0',
  `vd_count` int(9) default '0',
  PRIMARY KEY  (`vdid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_support_vote_voter` (
  `vuid` int(9) NOT NULL auto_increment,
  `vu_fid` int(9) default '0',
  `vu_ip` varchar(50) default NULL,
  `vu_username` varchar(50) default NULL,
  `vu_data` varchar(255) default NULL,
  `vu_time` datetime default NULL,
  PRIMARY KEY  (`vuid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_sys_sort` (
  `sortid` int(9) NOT NULL auto_increment,
  `sort_sort` varchar(50) default NULL,
  `sort_fid` varchar(255) default NULL,
  `sort_fsid` int(9) default '0',
  `sort_genre` varchar(50) default NULL,
  `sort_lng` varchar(50) default NULL,
  `sort_hidden` int(1) default '0',
  `sort_order` int(9) default '0',
  PRIMARY KEY  (`sortid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `jtbc_sys_upload` (
  `upid` int(9) NOT NULL auto_increment,
  `up_genre` varchar(50) default NULL,
  `up_upident` varchar(50) default NULL,
  `up_filename` varchar(255) default NULL,
  `up_field` varchar(50) default NULL,
  `up_fid` int(9) default '0',
  `up_time` datetime default NULL,
  `up_user` varchar(50) default NULL,
  `up_valid` int(1) default '0',
  `up_voidreason` int(1) default '0',
  PRIMARY KEY  (`upid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `jtbc_admin` (`a_name`, `a_pword`, `a_popedom`) VALUES ('admin', '21232f297a57a5a743894a0e4a801fc3', '-1') ;