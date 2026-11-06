#> asset:object/1066.knife/hit_entity/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1066/hit_entity

#> private
# @private
    #declare score_holder $UserID
    #declare tag 1066.TargetCandidate

# ヒット対象候補にタグを付ける
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run tag @s add 1066.TargetCandidate

# ダメージ与える
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=1066.TargetCandidate,distance=..5,sort=nearest,limit=1] run function api:damage/
    function api:damage/reset

# リセット
    tag @e[type=#lib:living,tag=1066.TargetCandidate,distance=..5,sort=nearest,limit=1] remove 1066.TargetCandidate
    scoreboard players reset $UserID Temporary

# super 呼び出し
    function asset:object/super.method
