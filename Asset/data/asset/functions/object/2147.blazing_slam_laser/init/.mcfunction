#> asset:object/2147.blazing_slam_laser/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2147/init

# 攻撃予告
    data modify storage api: Argument.FieldOverride.Color set value 16737792
    data modify storage api: Argument.FieldOverride.Scale set value [4f,4f,0.01f]
    data modify storage api: Argument.FieldOverride.Tick set value 20
    data modify storage api: Argument.ID set value 2063
    execute positioned ~ ~0.1 ~ run function api:object/summon

# 毎回同じ向きってのも味気ないので、向きを変えておく
    execute facing entity @p[gamemode=!spectator,distance=..64] feet run tp @s ~ ~ ~ ~ 0
