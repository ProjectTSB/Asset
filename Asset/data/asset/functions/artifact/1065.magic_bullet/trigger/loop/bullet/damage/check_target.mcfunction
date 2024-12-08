#> asset:artifact/1065.magic_bullet/trigger/loop/bullet/damage/check_target
#
# IDからヒット済みかをチェック
#
# @within function asset:artifact/1065.magic_bullet/trigger/loop/bullet/damage/

# 自身のIDをstorageに入れる
    execute if entity @s[type=player] store result storage asset:temp TL.ID int 1 run scoreboard players get @s UserID
    execute if entity @s[type=!player] store result storage asset:temp TL.ID int 1 run scoreboard players get @s MobUUID

# ターゲットが既にヒット済みかチェックする
    function asset:artifact/1065.magic_bullet/trigger/loop/bullet/damage/check.m with storage asset:temp TL
