/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - dynamic_cloud
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `dynamic_cloud`;

USE `dynamic_cloud`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `data` */

DROP TABLE IF EXISTS `data`;

CREATE TABLE `data` (
  `index_id` int(11) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `file` longblob,
  `s_k` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `data` */

insert  into `data`(`index_id`,`file_name`,`file`,`s_k`) values (1438,'zpâ€¢-Å¾Å“Ã£ÃŠÅ Ã®Ã¯\'Us>Ã¼Ã€Â¯xÂ­â€“(AiË†CÃ›XÃ—','ÏÔŞ”æUèvŒ9MdOó|Êüšm	®cy¿ğÍçôwŞ	²g•åÇ&JY/gR§ñÍÍTôÇNQ]#4“ˆ’87¦¤ü¶‡Á8ûß¾ƒÜ™¥\'÷1LX0I~‚—n×™_\0İf)ã¸>·j…T$Bâ9Y‰2b/ïĞmD|ŒÎ•wğN·÷jzÆ*€^7ê;hylÄªàLí–GÚsØxwx2À´ÜÇ\'ÉüÕ}0.ğ¦ØL=<û€”ëÍU$…2ß6ƒeµOŒc Ä¤WÌGµí–Û¾©åëİQs6a‘V:Èïâ	¶@ûjÜáŒ†I­ı?fÁTDŞÔÍ·»\'K¯˜\0T\"?*šÓ#ßŒpó\"ùZµ`ëÒİhİOëW\Z;‡şü¤ºàIÈÑ /uNâU‰æt]7v×Œ½”\0´fÂ\"œ¶;\\ZÁè_Êat¿\ZfopÅ	‰¬Š«LËÓGè–.q©áşĞŞÚk¿3ÓŠ™&­:­6.<âyXw¥ø„År~¿¶>+’Rò+>?m>m|]ÚîûQè•Rg«±co)\'Ú‡‡«oñc‰n%>¤ØØÔ›Ğàˆ„%}2~˜â;[´çÏ5}RJ¸ET»İƒB¾¡‹ô„\"*é!¯€ÁAØÚ9æ™ÖbuíäO”~ÔŒ(FÃ¼åæ˜\nÁ`´Ë/RÏ7³Ô>¶7ry—ï‰/ZtS‰¦¡iÒØn\rK5-Ò!ÒÖ8§B‹nØ[g‰âÆúJá_U›€z„¸4Ò‘ŠÙ\\n¡ğÅoòß;‰Ë–™BÑ‘1áö[ñSØ0ApÚp®Fz]ÿ•ú sŒzÚ_¿CŞY¥[·zµkÙ¼¢á»I4wp@\'™Öƒ<şLÿ¢Ü;Ğ/ÆGÌ-Œâ™ÉGŒ¾´ş˜{²ëŞc‹õ CWXÇªq¾­pr£B“İşRà±ŞãĞ&>ˆ+r~m[9wõ/Š’ˆÙ6‰\n(«r#¸1ü´$ñ´qÓ9mZtÈ^R°ŠSA>Ü;Ÿ#jçAemÆ\'ƒ¾\'†«u3c’}*À¤í-×„ï¥^˜lÉ»•~£úD\r\"‰ØçÊ·ï¼xµ\'´\ZÈ5ìÂúT[¨\r4OëÏÿœvd×üEš?±ßjqòıØ\09M#%ğ®#ÍÅ}jçT_¸³ò§_æ…Ò_KOûcdúÌ@â²ÿ¹LZêÇçSs‰‡¢}«æ;°•Â÷²ÎL8öY„|sNy8Ÿ¹ÛÀÉN¸ÄVÆ¡\ZTùõ—óÑ÷-NKØü’ß_ßV†ê»Äª¬FÔ÷ûì. \ZéÚ¿µ‚-J9zÓ-ÑY¦[b¿\0àD;ŸjşÊ¸(şÄ5Œ8Î3œ¢[µ–xÂ“ay^\0<:#Ì^î­qàU\0õá¨½´ p=×“É—IØ(Z¾ÜQìğs5ë.¦nKŞâ#VG¤ìÈ*ƒ5v±)ğò/ø°k¿]®¥±çŒÕã8\"nW¸QÂ\\xÖ,.%GÅüqÌr\Zƒß¸pCóc\'(Û}pû,F@94½-‰ri\'Õ}5\nàˆw<}/<ÛH2ÕºÃÓiÂùsû®¹yyMôä~LÈxó…ËÂj¬¨Ã•¨û£^k¤”Zï[ÄâZ²¯ïÏæÉ×\ZPÊR“’Öm”ÖRmd¸šÿ¹j‚é†á¸qşÔY×¢>õWxB×\"G©|›ˆ¬µƒºÍâunGä|`T™¿×ÁOª$(g(˜BşPË	‘/•õÌŠÎwg“ıÓËbs{Ñ…{;Å˜Bò½6_Boï*=ì›x\"©Å¼Øˆ.ìÓØâû¸ÄB#´å`ÕÍG	gæñ‰­Ÿé	¤>\nNùH¼ˆŞPE2Û\\0XÖï0›´:Õ®[5Sc˜¹™™°·˜oëíÑ†‰°UÎ\0ôÓü:6X„•ÀpÚ[Ë£Øîşœh¯¿zş†‹í¾ätu° ›/6®hh“Á[Æ§U&ãÆ6\'«“~UtïÏäSêsÈbŒ¶ÿ$Fü€§t¨\r…‹¢ŞØÃœû6\'1!:EÏºşPÁÁHÀæ”®’ÌYñaçjİxv˜Ÿ\" ”÷ƒUbD €lÈ«¹Ç=ªÜëBH­¦ÁÌ\n™räGÑ-Ø‘¨w¤Æ°ÆyØÌ|Àx -.Šíd^Ægœl1~I0(øŠ*éNù©f1İ‡£c¦RL5ß÷…^0‰‰ê!ìF[DxtsIõÇC§\ZÊB\rğ.‚[ò¢¿áˆ}Öš=\rÓ†43Ûj¿;ŸV:¨\0\'˜•í©!ó[Láµ{¾ké&MšHFD«c…’÷=«£Ò|˜,=@S;kÒå¾fA…gzÈîoÉëKzzzıÓT–¸ëÑivtU°²T®cèü´‹PrW‰ëY›ÎÍ¬rºÂHŞ¢íÓğDŸ4+¯Õ¥WWLø4>KE°$–ÕC?ÕëëÅ\\Wi²x¯¿LJ\rózG¬éÍÛN÷UŒÆê¯İ§½ áÑşà¼o«Ä”éÊ©“a«¡Œø!¨£ãrp´†€&+\'(y]È7ÛOà©™ˆÄ„ÇŸ¥#¥:xOÏ·×`QëÖ(Ø\n¿t†ÿº^•ü/-Åó·!îG¡ˆ—l&¿Ã2„„ƒ_°¤VüÓ*}Ï¾ùwu×Ö²|†ñ°ÉAÖ“coR’0©œvUû™¡\'p›ÿr¬„QÃ.w,Uì}×&e&…ı7ZräAwñqqb„|#ô¶æÄU¶,H2†ñj(„Å®§†\"}üÀŞøÄB²âÌ!y‹>wIĞíş6§;¹Ï >; \r˜¦4˜Å_†aíw\0ø¶8dUP˜Â§qÈÕ²y\"[(Å<9Ï3ÛSİMÖ- ÷¾\nnzi@—ÁC‘@ŞÎÁÆl¸-gÃ¤ëÃ: _BC&vå¥™:7 Ø¹ö˜¾‡·,+°É§õ‹1”kGeYÖËÚª¡…)c%0eË˜ÕŠÛÎPy“$ÜªßÌ$äS+CÓİqdŒss+ú¿Ôà”kŞå¦P)9”QIaç,å`	x9b`u¼•ü}ÇU?N\0¨L´’`\r$Øó•­<¦\ZVó6H%2ÙÙĞjø´o&ù8ÿË¹¸°bBl¸cŞ^ºR>ÄiéA²\Z#<AÉeù¦ìH©lóŞAëøÒÑ_à‚ëÀ/0«\nà4Yˆ;ŞcHpO~j™ZÀTP	%B·ü¸ä½µY7¡ŞØ±>ë4{Ô–\0£^³Ó†[i*š†>¤ñÅvf~;aäåŠÌÿ/dpw3ÿÎ¹¹ÀdPd÷×_‰[Õ·¯4C¨ùP¡Å‘xÁhÜ7Ä%%%mš<94èc—›p×Öò¯.˜×TõFÕ~¦(z^.”wàQXİûòu8°±{wr(}ˆØ´‘àE(ºy8N—p±ÇSÕ×±Š|\"1áü›Øé,EB[agc¤\Zv¿iwI\0Ìİ}lô‹Qe?ƒ‚KlÊ#Ÿ­[DŒr\Z—ds\\My_(\Z>Â¥Üÿàó˜hKI¸Ã~(C\'rqa/¶°8F ¤qŠ”JÀ¤ÔƒÃ]@I,nÇT¤>»!·~\Z\0E¼qß Ğ2•·\'âvÒÃ¹··’&qË·X¾r¢X]½rúTû9wªæÒÅ5Ö€“«›\'¡qÀ7K˜Q&6/%_‡ß7Ó¤ä7zÌP¢ÖØ«-Î2&\r’±ói+Wœ¨qX*š®ùŸŠ]µÂ­úmœ—BÑÁŠì|oß%äº“u»¿mrÃK€ši¾æÈ‘å6€á5®HÁ¼ˆ#×,¯ÒáMc~av)ñæú¾b¬BB/\"-Â2¨A•²‹‚ìa~—jfy\Zß[xy\'íı2‰éJ {j·ç­Yú^r\'MşâÀ&!6”UÑ\nwAĞß(D h|,İ9ùnƒÎm/aÉ}ñM®3R\\´2\"j}d(ó]†Kìe][(ÔãvYjä™¿;@bàsÁ•Ê]å<>|Í¦ß¯À®Wÿ~[³ÒÂbãJP6ğé6gKBKCÖz\'ºw‹ qh]dshÀ«<×ò·.õÂzKg¢.N*ø¢ïæC95-ê;ërÔ6Yaÿ÷0K¸©ÿK7FÉÎ²³ÈH@hÄj>æí@?\\ìÆ†ñ &¬Ür¾Ø9ûµ%ıÿ>¶Dôq=À,:ûi|ÄW¤ÜàæF?Ò&3©ğ+(0ãÓÖã>F=7ë§AJì•ÿeƒSàØa5ùğH¹³Ğ%O`±\\6´Nj¹ç¾WÃ¥0µEøûŞ=¸‹\ZÎŞXëj;s5~0=QU“%\'÷ŒV¢â‰SË9g‚5&¶`Ìfòù\0IuÙ‘â{54•î¨f“»‹„Ì?*-)øËkÔÿåŒ\"„…GtY„bNw8(Å­•@Mñ2îU MÌòNØ@›\0Ï¯†Õå\\˜ıµú	Pëx»\nÙäŸ“ûf®hM&~!_àÜí\nÊR„Ë~âÖ-wƒçl mÀ§Æ­ò>-™¥Ğ³Ã´têa{û[`ş˜.ïeoAÑ	)©y?Ç¢x½jUD‡\nu÷Nqæ¢‚:>œÓ-2¯VÇSAó u{J¡¿¯Ä.','0.03 0.29 -0.08\r\n-0.05 -0.03 0.07\r\n0.09 -0.28 0.05'),(901,'UÃ¿Ã™Â´Ã’â€¦CÃŸ2WezÅ“Â±Ã«Âª','ÏÔŞ”æUèvŒ9VL¶¿FiYµ»m®ÏÕÉÿ‘\"2»í–lv¡j¿?k\0·ŞEÈİH²&dDÅdD²(y‹-9Su»3¹z;Ñ;l£/Á¿áyP)&éÀŞ¬à›HÌ$: ï•%>!ˆö¥ªhœ·>®`ºm‡™ğ€¾^ÀÁûÑ#Ïnn3 DëVñ²7u–Ÿe€_ásC2RB,^Ò¾Õ Ìá{uëw`Åÿ•€ùø ¬Åv`¿/(\Zn¿ENª]êY—‹Q¿ /O€XceÊcLBŞ’è!‰r¿ÔÃ‰ãªµĞûÉI—¨k_Z\"‚âÙ÷¢úßıŸĞõ«‡ú9‘*®\'€vÀy½-÷íeÁAøb-ê[«ˆî¨_vß>\\áÒÀõÀÅŞ4;ÃC¶,Qˆöù2Oº#²-‰´\n¹ä™!ú?ˆ!ÛëüÊ\"m«b	Ä‰uV¦oÙ\\ÁåFÜã@lÑ-eÏijãÃèÇ•z¨=n6ŸP¼ıÄ…:°3æÀi`®sîãÃ7<Ö§%	IŞFñº ]\n-Æ1_ß/ª(×%¥FZqE¢g!¢m™c—_ÿ†«Uı½½GP)š¬®¢²»ÈØ©N¤ÿfXÚ<ôÿ¦5öˆ/“ÛÉiÍÔH\rO,µpvªöÊOÀiÁ›Ï{âDõúã\nĞ·æÎo¦‰©ø*ì‡RYƒ¾™KS}êúá)…c.z\0\\E¸|T»™ÈDçŠ“¤;(¯•ªBJ_Öš²ó¨s¨ºi¿fVË°Şà@¾šYeË,ŞÕ‡C*VªÚ=~]¯ùGpÈÜM«1øéæ2shØ¯¸G:²¥áróŞM-\'#¾`Ïü «Ì\\ôí½\nV˜Æİç+w»2#Áòn;óqætÜ\0¡/Ù@…P$€ƒÒ>7Co¿Ä\\8\"‚$u‡§pÚ¦Jü¥Bš<>=Ï‡Š¹D*®şba“¿¸ÿO´ôº–*4x£çTĞónùİÉi¹,\nöJ*è¦ªª2Şqƒ;îì6W/GuFs„3Í2ÈRtŞØşš’»Nb–oZø¤ZêNkš¨’gÜæHó%ËQš#H¹€š[Í§5z§p\0‰”\nn:fõè£²S\nßUïtZÊ(\' @1w‡d#;èÕ²\'î„Æm—£ØÃ;íŒ³—Œ4†S„ÑĞÿ\\b,q`h¢\'	kyD‚q]»+àŸR0p×¦Éñ„‚y@Ïtz×#ßö\Z[êA^£?¦à„òóL}É\r\nª/•OçISÆwÓã™Ä@)róÉ«øzÛ\nÆı]è3ÆyboïCÌ)Ğğlcël@ÇØùç_¦°œµ´ËÃLašÏ!k+«°?†6wR<äš?~{öıÍG\0	Í›z%JŠxâÒ§4šÑ¤Wªcdo_×‡“š¾§P¢ÉöfPaoEv°rOÛ#$§ƒª4\r\\j½rü ©³°˜Æ¤lsšÜ:¬»Üz7Îmª!øHÆÚô9\0ø/ïÚ1Ú‹sôLåi°\ZÆO­œã„Ê£r†ğ­ê$û\"93ÒL&I¨ÉkTÚ—7»’bGö(ø±´Ã“TKÍ®ó×€õóIªÌ1Ê\n÷„èÏĞepšJHƒN‡¶â_‹Cù“\Zeµ\ZD‘9AcÒ ÚIéŒñgáöÆT¡øOx‡ÎäSğ\r–Èû~øk×g¤3vÔbRë{IT	ŒQæ¾XKèé“hóêq\n!TfâòR›D½(Òqñ´¢‚­QX¬ûlUpá|gfÿÛÀ’kêŞc.ÒRIŒä5’ñ×˜OS†.ÇÅaã|v6wçıØ|¯w‚ØãG9¿çYuí)Ù\rèRìAI‡(Oöp6ßãŒWüÈRÈ1 ÁöÚõ˜\r.|¸™HÂÆÿÚI_¤£O^q–3ÁÖÂ­à™¿Ñn–ÑÅuy²rãtaK§jMO‹ãœ‚í\0n<Ë+]ÍˆEî‡( “jN™»óBâ˜\0@ù0PY¨)^o4´¿ò\"[+‰ûKJb‹öI{=Í´÷÷ây„”‘şY¿œùgLÅã»z¹]›û.æáá{4HíË0h«õ§\\y†$Ÿ(Ú}ğäW+„•uèáE?qHÀµüwàä#¶¯š*YÿTçeàÎCª—-(ß$),\\nŸ‚P…°4ëÚüÈÏG$ˆÓ×EßpA¶~Ec»R.Oœùâ¹õ¤Ú!‚mX£Î	©­>ÍÇEä$°ƒ&æc«hù\'f%¶QÙjC9Ö›@z[!Yğê?2Šh›&p®uÎ‡FCÑ²ÎHÁ“éØÌ&ø§àÈ,+>ùéT´ÌE«Ù¶ZXÒQ\ZQâ\\ _4gä©Aö,?‘ŞØ’âVÑÔ´1½-¨·×ÜÂÆ	/è)C÷dŒPƒëÎõ=gû !ó®|ª:Q®¿ü¬¦œ·fŒ6®|¢ŠŞË$C-QıÍƒÚ/juˆ5Ö˜7³7oR[·&òê9ÀK–•Ü6@p4frU³Õê55Ã´ƒFx_¾½³‘PyjõÔÇÿ²æ‚ñîşûÒßõ9FŞ¢&ÀŞ®êŸRû5Æ‹Ğ–Â–ºÅ\r/aÏŒÅ¨U)œ{\nß¡WÌ§{™oO=ÿBæ Æ?Ë°ì 75K__àÔœmOh±\\Š›ĞÄ‘	ÍHc2`d?—«;%08±üHVÌª’Ï*.¯bô’wš~XœvÛâ7m ±¨ÆzuHİi>Á8ıMÑnC÷ra7~?K—Ï}\\é€3·³]æóDì±4ˆZüXZ|aéˆä«´p6—{~²ËÅ8‹ÓtñxU@Îá‹#`$ó½âğõ[çÓ]‘ª‡.Ööåàr7W”…ax…ºÅ»3ã-8ó3mñš§­2Qğ…7WQ\"0ÿBÔîCNŸG;[ÑidûOúKÎ*À¥¤ù¶ëÚÈj†.ÿ6eĞbıcÜ÷<eGWE¬8ù×ÏŸıbÿÇ¿Q‡pox(“8•»)TP‹Ÿ_Û‹òãî=–r^da1Ÿı6MWâé‹Ğµ\0™Î…½¨íÿ½QKe-LAÓëè›6ƒ\"ÕŒKÒõiÂşÖ2ëE:±I_Û÷Â I”^ Ì5b<8÷(U³F¿«ô´cj»S’¦¨ú!™`qÑWÑRD¶sîÔıògVø`´Ñnµ—¬!«˜&\0óŸï!w9zX/úÙs¯£ÆûXêâ <¼S‘ÁÒõ—‰7´;ÀeŒã2²Œè€w\Zu—ÉÑˆÓvÿ98%¬ÌEŒzFÛôßÓg_)’û¼NX_‡KmCÕ(5…To«ÍCù·K–Îëqÿ>‡Ú_ËÎ(^cª×Ê¿Ÿdù&d‚\nÍÒ3O~R»ÔéLŠLI€5gy{ú!UCÀO$™Ôœ®ífØaNÀimk´ñàÇá\"Ù,ßømG·ÊIO`YÖ¬8	½€MBüweR3%4egU¨G¸fNîQÌ–\'òt›VæáÀçb<=SËT[[«lšÜ‹ŸÆùMMZâ]ºÏ.ÑÏ¨/×#$LYöümBY2àHĞPi—Ì#ÚIm®£?^Šà÷^úÁÃqÎì( Eâó³¥«Dx0É®²ÈŞ7\Z4	„„ìÙVn;‹(>ÂÓwšw¦Ç’¤c§w—«¶U¬','-0.01 0.06 -0.01\r\n0.05 -0.03 0\r\n-0 -0.01 0.04');

/*Table structure for table `meta_data` */

DROP TABLE IF EXISTS `meta_data`;

CREATE TABLE `meta_data` (
  `sno` int(11) DEFAULT NULL,
  `owner` varchar(200) DEFAULT NULL,
  `index_id` int(11) NOT NULL,
  `keyword` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`index_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `meta_data` */

insert  into `meta_data`(`sno`,`owner`,`index_id`,`keyword`) values (1,'swamy',901,'Ã´â€”Ã«Â²kc\\OÃ Ã­a]Ã–Ã’Â£Ã«â‚¬Å½Ã¾Ã«ÃÃ‰E]Ã¶c\"Ã›\0'),(0,'swamy',1438,'Ã´â€”Ã«Â²kc\\OÃ Ã­a]Ã–Ã’a	%Â¦SÃ—Â¨:\ZNÂ¯\\=ÃˆÃâ€¦u&Â£H:CKÃ‰Ã…RÃ=ÃŒ');

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `uid` varchar(100) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `street` varchar(500) DEFAULT NULL,
  `city` varchar(500) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `ph` varchar(50) DEFAULT NULL,
  `gen` varchar(50) DEFAULT NULL,
  `username` varchar(500) NOT NULL,
  `pwd` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

insert  into `owner`(`uid`,`name`,`email`,`street`,`city`,`zip`,`ph`,`gen`,`username`,`pwd`) values ('1','SWAMY','cloudtechnologiesprojects@gmail.com','Siri Towers','Hyderabad','500016','08121953811','Male','swamy','swamy');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `un` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `des` varchar(50) NOT NULL DEFAULT 'non',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`id`,`name`,`lname`,`address`,`city`,`state`,`zip`,`phone`,`email`,`un`,`pwd`,`des`) values (1,'SAJID','MD','304, siri towers','Hyderabad','Telangana','500016','08121953811','sajid24x7@gmail.com','user1101','sajid','accept');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `fid` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `user` varchar(200) NOT NULL,
  `des` varchar(200) DEFAULT 'non',
  PRIMARY KEY (`fid`,`file`,`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `fid` varchar(100) DEFAULT NULL,
  `owner` varchar(200) DEFAULT NULL,
  `file` varchar(300) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT 'non',
  `s_k` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp` */

insert  into `temp`(`fid`,`owner`,`file`,`keywords`,`s_k`) values ('1','swamy','cloud.txt','cloud, computing, resources','-0.01 0.06 -0.01\r\n0.05 -0.03 0\r\n-0 -0.01 0.04');

/*Table structure for table `tfidf` */

DROP TABLE IF EXISTS `tfidf`;

CREATE TABLE `tfidf` (
  `f1` varchar(200) DEFAULT NULL,
  `f2` varchar(200) DEFAULT NULL,
  `f3` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tfidf` */

insert  into `tfidf`(`f1`,`f2`,`f3`) values ('0.txt','1438.txt',0.07006487401994585),('0.txt','901.txt',0.06174482140592225);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
