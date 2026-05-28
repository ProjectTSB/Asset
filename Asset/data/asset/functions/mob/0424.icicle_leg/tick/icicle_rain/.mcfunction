#> asset:mob/0424.icicle_leg/tick/icicle_rain/
#
# 疑似つらら攻撃
#
# @within function asset:mob/0424.icicle_leg/tick/

#> 拡散用エンティティのタグと、インターバルのスコアホルダー
# @private
    #declare tag SpreadMarker
    #declare score_holder $Interval

# Motionを固定
    data modify entity @s Motion[0] set value 0d
    data modify entity @s Motion[2] set value 0d

# マーカーを召喚して拡散させる
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[3.5d,3.5d],[0.0d,0.0d],[3.5d,3.5d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..1,limit=1] at @s run function lib:spread_entity/

# 拡散したマーカーに演出
    execute at @e[type=marker,tag=SpreadMarker,distance=..6,limit=1] run function asset:mob/0424.icicle_leg/tick/icicle_rain/vfx

# 範囲表示
    execute positioned ~ ~0.1 ~ rotated ~ 0 run function asset:mob/0424.icicle_leg/tick/icicle_rain/shape

# 一定間隔でダメージ
    scoreboard players operation $Interval Temporary = @s General.Mob.Tick
    scoreboard players operation $Interval Temporary %= $5 Const
    execute if score $Interval Temporary matches 0 run function asset:mob/0424.icicle_leg/tick/icicle_rain/damage
    scoreboard players reset $Interval Temporary

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..6,limit=1]
