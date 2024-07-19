#> asset:artifact/1029.conviction_bone/trigger/shot/shot
#
#
#
# @within function asset:artifact/1029.conviction_bone/trigger/shot/schedule

# 自分にタグ付与
    tag @s add SL.This

# 移動する
    execute unless entity @e[type=#lib:living,tag=Enemy,distance=..10,sort=nearest,limit=1] run tp @s ^ ^ ^0.25
    execute if entity @e[type=#lib:living,tag=Enemy,distance=..10,sort=nearest,limit=1] facing entity @e[type=#lib:living,tag=Enemy,distance=..10,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-200 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.5 ~ ~

# ぱーちくる
    #particle soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.005 5 force
    #particle squid_ink ~ ~ ~ 0.1 0.1 0.1 0.005 2 force
    particle dust 0.455 0.027 0.027 4 ~ ~ ~ 0.1 0.1 0.1 5 2 force

# 寿命を減らす
    scoreboard players remove @s SL.ShotTime 1

# クールを増やす
    scoreboard players add @s SL.CoolTime 1

# ダメージ
    execute if score @s SL.CoolTime matches 4.. if entity @e[tag=Enemy,distance=..2,sort=nearest,limit=1] run function asset:artifact/1029.conviction_bone/trigger/shot/hit

# 寿命が来たら発動するやつ。プレイヤーが発動する内容
    execute if score @s SL.ShotTime matches ..0 run kill @s

    tag @s remove SL.This
