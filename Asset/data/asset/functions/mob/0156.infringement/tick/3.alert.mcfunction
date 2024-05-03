#> asset:mob/0156.infringement/tick/3.alert
#
# 形態変化する
#
# @within function asset:mob/0156.infringement/tick/2.tick

# タグ付け
    tag @s add 4C.Alert

# ハード以上で、移動速度上昇とノクバ耐性を付与
    execute if predicate api:global_vars/difficulty/min/hard run attribute @s generic.movement_speed base set 0.45
    execute if predicate api:global_vars/difficulty/min/hard run attribute @s generic.knockback_resistance base set 10

# 演出
    playsound entity.creeper.primed hostile @a
    item replace entity @s armor.head with budding_amethyst 1
    item replace entity @s armor.chest with leather_chestplate{display:{color:10376447}} 1
    item replace entity @s armor.legs with leather_leggings{display:{color:8075474}} 1
    item replace entity @s armor.feet with leather_boots{display:{color:4919448}} 1

# 発光
    effect give @s glowing 9999 1 true