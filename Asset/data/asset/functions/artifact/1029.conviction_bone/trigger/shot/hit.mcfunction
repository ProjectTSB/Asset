#> asset:artifact/1029.conviction_bone/trigger/shot/hit
#
#
#
# @within function asset:artifact/1029.conviction_bone/trigger/shot/shot

# 自分にタグ付与
    tag @s add SL.This

# ダメージを与える
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 42.0f
    # 属性
        data modify storage api: Argument.AttackType set value "Physical"
        data modify storage api: Argument.ElementType set value "None"
    # 補正function
        execute as @a if score @s UserID = @e[type=marker,tag=SL.This,limit=1] SL.UserID run function api:damage/modifier
    # 対象に
        execute as @e[tag=Enemy,distance=..2,sort=nearest,limit=1] run function api:damage/

# リセット
    function api:damage/reset
    tag @s remove SL.This
    scoreboard players set @s SL.CoolTime 0
