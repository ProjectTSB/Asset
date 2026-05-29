#> asset:object/1158.ouroboros_ball/hit_entity/
#
# ヒット時の処理
#
# @within function asset:object/alias/1158/hit_entity
    playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 0.6 1.33 0.0
    playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ 1.0 0.7 0.0
    particle block lapis_block ~ ~ ~ 0 0 0 1 20

# ダメージ処理とエフェクト付与
    execute if entity @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run function asset:object/1158.ouroboros_ball/hit_entity/damage
    
# 玉けし
    kill @s
