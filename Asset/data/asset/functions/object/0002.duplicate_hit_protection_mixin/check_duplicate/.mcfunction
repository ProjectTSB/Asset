#> asset:object/0002.duplicate_hit_protection_mixin/check_duplicate/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2/check_duplicate

scoreboard players reset @s 0002.DuplicateHitProtectionMixin

execute if entity @s[tag=!ExtendedCollision] store result storage asset:temp Args.ID int 1 run scoreboard players get @s MobUUID
execute if entity @s[tag= ExtendedCollision] store result storage asset:temp Args.ID int 1 run scoreboard players get @s ForwardTargetMobUUID

function asset:object/0002.duplicate_hit_protection_mixin/check_duplicate/check_first_hit.m with storage asset:temp Args
data remove storage asset:temp Args
