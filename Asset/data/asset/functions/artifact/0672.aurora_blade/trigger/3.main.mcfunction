#> asset:artifact/0672.aurora_blade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0672.aurora_blade/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $MPPer

# MP割合を取得
    function api:entity/player/get_mp_per
    execute store result score $MPPer Temporary run data get storage api: Return.MPPer 100

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出用object
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Frames:[20651,20652,20653,20654],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Item:{id:"minecraft:stick",Count:1b}}
    execute anchored eyes positioned ^ ^ ^1.2 positioned ~ ~-0.5 ~ rotated ~ ~-4 run function api:object/summon

# 演出
    execute anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.6 ~ rotated ~ ~-4 run function asset:artifact/0672.aurora_blade/trigger/4.sweeping_particle
    playsound entity.player.attack.sweep player @a ~ ~ ~ 0.4 1 0
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.8 2 0

# Argument.Damageに代入 $MPPer >= 70 なら1.5倍
    execute store result storage api: Argument.Damage float 1 run random value 200..400
    execute if score $MPPer Temporary matches 70.. store result storage api: Argument.Damage float 1.5 run data get storage api: Argument.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $MPPer Temporary
