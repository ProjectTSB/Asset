#> asset:mob/0154.ruin/tick/ready
#
# 形態変化する
#
# @within function asset:mob/0154.ruin/tick/

# 装備変更
    item replace entity @s weapon.mainhand with stick{CustomModelData:20065}

# タグを付与
    tag @s add 4A.Madness

# ハード以上で、自身にノクバ耐性を付与
    execute if predicate api:global_vars/difficulty/min/3_blessless run attribute @s generic.knockback_resistance base set 10

# 演出
    particle dragon_breath ~ ~1 ~ 0.4 0.4 0.4 0.1 100
    particle dust 0.255 0.039 0.039 1 ~ ~1 ~ 0.3 0.3 0.3 1 100
    playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 1 1
