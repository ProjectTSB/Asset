#> asset:mob/0213.terrible_sonic_bomber/tick/motions/cruise_motion
#
# 
#
# @within function asset:mob/0213.terrible_sonic_bomber/tick/

#> prv
# @private
    #declare score_holder $flare_time
    #declare tag 5X.ShouldTurn

# 中心座標を中心に旋回
    execute positioned ^ ^ ^1.5 unless entity @e[type=marker,tag=5X.Centre,distance=..50] run tag @s add 5X.ShouldTurn
    execute if entity @s[tag=5X.ShouldTurn] facing entity @e[type=marker,tag=5X.Centre,distance=..128,limit=1] eyes rotated ~60 0 run tp @s ~ ~ ~ ~ ~

# 直進
    execute rotated as @s run tp @s ^ ^ ^1.5

# AJ modelの向き合わせ
    execute rotated as @s on passengers if entity @s[tag=5X.ModelRoot] run tp @s ~ ~ ~ ~ ~

# 後退翼状態で旋回してた場合の旋回アニメーション
    execute if entity @s[tag=5X.ShouldTurn,tag=!5X.WingStraight] on passengers if entity @s[tag=5X.ModelRoot] run function animated_java:terrible_sonic_bomber/animations/roll_back/play

# 直線翼状態での旋回アニメーション
    execute if entity @s[tag=5X.ShouldTurn,tag=5X.WingStraight] on passengers if entity @s[tag=5X.ModelRoot] run function animated_java:terrible_sonic_bomber/animations/roll_straight_and_wing_back/play

# 後退翼に戻ったことを記録
    execute if entity @s[tag=5X.ShouldTurn,tag=5X.WingStraight] run tag @s remove 5X.WingStraight

# 攻撃後などで低空にいた場合は上昇
    execute at @e[type=marker,tag=5X.Centre,distance=..128,limit=1] positioned ~-100 ~15 ~-100 if entity @s[dx=199,dy=-100,dz=199] at @s run tp @s ~ ~0.5 ~

# 対空砲付近を飛ぶときはフレアを出す(8tickおき)
    execute store result score $flare_time Temporary run time query gametime
    scoreboard players operation $flare_time Temporary %= $8 Const
    execute if entity @e[type=marker,tag=5X.Centre,distance=..30] if score $flare_time Temporary matches 0 run particle minecraft:lava ^ ^-1 ^-2 1.5 0 1.5 1 24 force

        #say cruise

# reset
    scoreboard players reset $flare_time Temporary
    tag @s remove 5X.ShouldTurn
