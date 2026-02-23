#> asset:mob/2002.duplicate_hit_protection_mixin/check_duplicate/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/2002/check_duplicate

scoreboard players reset @s 2002.DuplicateHitProtectionMixin

execute if entity @s[type= player] store result storage asset:temp Args.ID int 1 run scoreboard players get @s UserID
execute if entity @s[type=!player,tag=!ExtendedCollision] store result storage asset:temp Args.ID int 1 run scoreboard players get @s MobUUID
execute if entity @s[tag= ExtendedCollision] store result storage asset:temp Args.ID int 1 run scoreboard players get @s ForwardTargetMobUUID

execute if entity @s[type= player] run function asset:mob/2002.duplicate_hit_protection_mixin/check_duplicate/check_first_hit/player.m with storage asset:temp Args
execute if entity @s[type=!player] run function asset:mob/2002.duplicate_hit_protection_mixin/check_duplicate/check_first_hit/non-player.m with storage asset:temp Args
data remove storage asset:temp Args
