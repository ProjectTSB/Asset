#> asset:object/1108.waterfall/tick/damage
#
# ダメージ処理
#
# @within function asset:object/1108.waterfall/tick/

#> Private
# @private
    #declare score_holder $UserID

# 演出
    playsound entity.player.splash.high_speed player @a ~ ~ ~ 0.5 1.3
    particle dust 0.3 0.6 100000000 1.2 ~ ~9 ~ 0.5 5.5 0.5 0 40 normal @a
    function asset:object/1108.waterfall/tick/vfx_circle

# 演出のための回転
    tp @s ~ ~ ~ ~10 ~

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
