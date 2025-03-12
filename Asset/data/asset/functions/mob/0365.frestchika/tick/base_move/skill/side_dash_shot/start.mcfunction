#> asset:mob/0365.frestchika/tick/skill/dash/start
#
# 共通ダッシュ開始モーション
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/**

# 左右のどっちか選択
    execute store result score @s Temporary run random value 0..1
    execute if score @s Temporary matches 0 run tag @s add

    playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 1.7
    playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 2 1
    particle minecraft:crit ~ ~ ~ 0 0 0 1 25
    particle minecraft:poof ~ ~ ~ 0 0 0 0.3 50
