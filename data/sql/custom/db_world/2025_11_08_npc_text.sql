DELETE FROM `npc_text` WHERE `ID` BETWEEN 70694 AND 70698;

INSERT INTO `npc_text` (`ID`, `text0_0`, `VerifiedBuild`) VALUES
(70694, "Change Name", -1),
(70695, "Input New name(Must restart)", -1),
(70696, "Bot's Name Change OK！", -1),
(70697, "Name must via 2-36 Byte", -1),
(70698, "Can not include this in name:' \" \\ ; < >", -1);

DELETE FROM `npc_text_locale` WHERE `ID` BETWEEN 70694 AND 70698;

INSERT INTO `npc_text_locale` (`ID`,`Locale`, `text0_0`) VALUES
(70694, "zhCN", "修改名字"),
(70695, "zhCN", "输入新名字（修改以后重启客户端生效）"),
(70696, "zhCN", "机器人改名成功！"),
(70697, "zhCN", "名字长度必须在2-36个字节之间（约2-12个字符）"),
(70698, "zhCN", "名字不能包含特殊字符：' \" \\ ; < >");
