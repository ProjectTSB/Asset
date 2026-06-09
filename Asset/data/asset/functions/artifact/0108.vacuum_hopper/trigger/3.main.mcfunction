#> asset:artifact/0108.vacuum_hopper/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0108.vacuum_hopper/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    data modify storage asset:artifact IgnoreItemUpdate set value true
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare score_holder $Interval

# 音
    execute store result score $Interval Temporary run data get storage global Time
    scoreboard players operation $Interval Temporary %= $3 Const
    execute if score $Interval Temporary matches 0 anchored eyes positioned ^ ^1 ^1 run playsound minecraft:entity.breeze.idle_air player @a ~ ~ ~ 0.7 0.5
    scoreboard players reset $Interval Temporary

# パーティクル
    execute anchored eyes positioned ^ ^-0.4 ^ run function asset:artifact/0108.vacuum_hopper/trigger/particle

# 円柱判定
    data modify storage lib: Argument.BoundingCone.Angle set value 40d
    data modify storage lib: Argument.BoundingCone.Selector set value "@e[type=#asset:0108.vacuum_hopper/vacuumable,tag=!Uninterferable,tag=!Immovable,distance=..16]"
    function lib:bounding_cone/

# 吸い込む
    execute as @e[type=#asset:0108.vacuum_hopper/vacuumable,tag=BoundingCone,distance=..16] at @s run function asset:artifact/0108.vacuum_hopper/trigger/vacuum/

# リセット
    tag @e[type=#asset:0108.vacuum_hopper/vacuumable,tag=BoundingCone,distance=..16] remove BoundingCone
