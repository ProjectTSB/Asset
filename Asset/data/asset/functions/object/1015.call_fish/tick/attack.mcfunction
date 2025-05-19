#> asset:object/1015.call_fish/tick/attack
#
#
#
# @within function asset:object/1015.call_fish/tick/find_target/

#> Private
# @private
    #declare score_holder $UserID

# 敵の元へテレポート
    tp @s ~ ~ ~

# 演出
    particle minecraft:block water ~ ~ ~ 0.3 0.3 0.3 10 100
    playsound entity.squid.death neutral @a ~ ~ ~ 1 2

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute at @s as @e[type=#lib:living,tag=1015.Target,tag=!Uninterferable,distance=..0.01,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living,tag=1015.Target,tag=!Uninterferable,distance=..0.01,sort=nearest,limit=1] remove 1015.Target
