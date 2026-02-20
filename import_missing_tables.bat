@echo off
chcp 65001 >nul
echo 导入缺失的数据库表...
echo.

set MYSQL_PATH=F:\LWcoreNpcBots\LWCore-WoTlk-NpcBots-BlizzardLike2026Edition-Build\bin\RelWithDebInfo\mysql\bin
set MYSQL_USER=acore
set MYSQL_PASS=acore
set MYSQL_HOST=127.0.0.1
set MYSQL_PORT=3310
set DB_CHARACTERS=acore_characters

echo 导入 worldstates 表...
"%MYSQL_PATH%\mysql.exe" -h%MYSQL_HOST% -P%MYSQL_PORT% -u%MYSQL_USER% -p%MYSQL_PASS% %DB_CHARACTERS% < "data\sql\base\db_characters\worldstates.sql"

echo 导入 pvpstats_battlegrounds 表...
"%MYSQL_PATH%\mysql.exe" -h%MYSQL_HOST% -P%MYSQL_PORT% -u%MYSQL_USER% -p%MYSQL_PASS% %DB_CHARACTERS% < "data\sql\base\db_characters\pvpstats_battlegrounds.sql"

echo 导入 pvpstats_players 表...
"%MYSQL_PATH%\mysql.exe" -h%MYSQL_HOST% -P%MYSQL_PORT% -u%MYSQL_USER% -p%MYSQL_PASS% %DB_CHARACTERS% < "data\sql\base\db_characters\pvpstats_players.sql"

echo 导入 quest_tracker 表...
"%MYSQL_PATH%\mysql.exe" -h%MYSQL_HOST% -P%MYSQL_PORT% -u%MYSQL_USER% -p%MYSQL_PASS% %DB_CHARACTERS% < "data\sql\base\db_characters\quest_tracker.sql"

echo 导入 recovery_item 表...
"%MYSQL_PATH%\mysql.exe" -h%MYSQL_HOST% -P%MYSQL_PORT% -u%MYSQL_USER% -p%MYSQL_PASS% %DB_CHARACTERS% < "data\sql\base\db_characters\recovery_item.sql"

echo 导入 reserved_name 表...
"%MYSQL_PATH%\mysql.exe" -h%MYSQL_HOST% -P%MYSQL_PORT% -u%MYSQL_USER% -p%MYSQL_PASS% %DB_CHARACTERS% < "data\sql\base\db_characters\reserved_name.sql"

echo 导入 world_state 表...
"%MYSQL_PATH%\mysql.exe" -h%MYSQL_HOST% -P%MYSQL_PORT% -u%MYSQL_USER% -p%MYSQL_PASS% %DB_CHARACTERS% < "data\sql\base\db_characters\world_state.sql"

echo 导入 warden_action 表...
"%MYSQL_PATH%\mysql.exe" -h%MYSQL_HOST% -P%MYSQL_PORT% -u%MYSQL_USER% -p%MYSQL_PASS% %DB_CHARACTERS% < "data\sql\base\db_characters\warden_action.sql"

echo.
echo 完成！所有缺失的表已导入。
pause
