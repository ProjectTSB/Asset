#> asset:object/1043.mini_black_hole/tick/damage/
#
#
#
# @within function asset:object/1043.mini_black_hole/tick/

#> Val
# @private
    #declare score_holder $UserID

# ターゲットを特定
    execute store result storage asset:temp Args.Num float 0.1 run scoreboard players get @s General.Object.Tick
    function asset:object/1043.mini_black_hole/tick/damage/search_target.m with storage asset:temp Args
    data remove storage asset:temp Args

# 補正貫通ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.BypassModifier set value 1b
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=1043.Target,tag=!Uninterferable,distance=..8] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
    tag @e[type=#lib:living,type=!player,tag=1043.Target,tag=!Uninterferable,distance=..8] remove 1043.Target
