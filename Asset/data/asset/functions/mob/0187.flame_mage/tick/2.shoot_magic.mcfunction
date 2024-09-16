#> asset:mob/0187.flame_mage/tick/2.shoot_magic
#
# 魔法を発射する
#
# @within function asset:mob/0187.flame_mage/tick/1

#> Private
# @private
    #declare score_holder $Random
    #declare tag 57.Already

# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.7

# プレイヤーの方向に撃つ
    data modify storage api: Argument.ID set value 188
    execute anchored eyes positioned ^-0.25 ^ ^ run function api:mob/summon
    execute anchored eyes positioned ^-0.25 ^ ^ run tp @e[type=marker,tag=!57.Already,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ facing entity @p[distance=..20] eyes
    execute anchored eyes positioned ^-0.25 ^ ^ run tag @e[type=marker,tag=!57.Already,distance=..0.01,sort=nearest,limit=1] add 57.Already

# 次に攻撃するタイミングをランダムにする
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $31 Const
    scoreboard players operation @s 57.Tick = $Random Temporary
    scoreboard players remove @s 57.Tick 120

# リセット
    scoreboard players reset $Random Temporary
