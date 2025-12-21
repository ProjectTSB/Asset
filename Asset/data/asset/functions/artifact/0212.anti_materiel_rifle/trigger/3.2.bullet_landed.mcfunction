#> asset:artifact/0212.anti_materiel_rifle/trigger/3.2.bullet_landed
#
#
#
# @within function asset:artifact/0212.anti_materiel_rifle/trigger/3.1.bullet

# 着弾の演出
    particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 0 10
    playsound minecraft:entity.generic.explode player @a

# ブロック破壊
    execute if predicate api:area/is_breakable unless block ^ ^ ^0.5 #lib:no_collision/ unless block ^ ^ ^0.5 #lib:unbreakable run setblock ^ ^ ^0.5 air destroy
    # アドベンチャー用(仕様決まるまでちょっと保留で)
        #execute unless block ^ ^ ^0.5 #lib:no_collision/ if block ^ ^ ^0.5 spawner if entity @s[gamemode=adventure] run setblock ^ ^ ^0.5 air destroy
