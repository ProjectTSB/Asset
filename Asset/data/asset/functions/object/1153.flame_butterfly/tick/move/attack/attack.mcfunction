#> asset:object/1153.flame_butterfly/tick/move/attack/attack
#
#
#
# @within function asset:object/1153.flame_butterfly/tick/move/attack/

#> Private
# @private
    #declare tag Target
    #declare score_holder $UserID
    #declare score_holder $HealthPer

# 演出
    execute rotated ~90 25 run function asset:object/1153.flame_butterfly/tick/move/attack/vfx/2
    execute rotated ~90 -25 run function asset:object/1153.flame_butterfly/tick/move/attack/vfx/2

# 自身の体力割合を取得
    execute as @p[tag=1153.Owner] run function api:entity/player/get_health_per
    execute store result score $HealthPer Temporary run data get storage api: Return.HealthPer 100

# 対象選定
    tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..3.5] add Target
    execute positioned ~-2 ~-2 ~-2 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=3,dy=3,dz=3] add Target

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.Default
    execute unless score $HealthPer Temporary matches 50.. run data modify storage api: Argument.Damage set from storage asset:context this.Damage.LowHealthPer
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=1153.Owner] run function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Target,distance=..10] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $HealthPer Temporary
    tag @e[type=#lib:living_without_player,tag=Target,distance=..10] remove Target
        data modify storage asset:context this.AttackCD._ set from storage asset:context this.AttackCD.Max
    function asset:object/1153.flame_butterfly/tick/move/common/reset
