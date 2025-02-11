#> asset:artifact/0212.anti_materiel_rifle/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/212/click/

# 弾を進めるための再起開始
    execute positioned ~ ~1.5 ~ run function asset:artifact/0212.anti_materiel_rifle/click/3.1.bullet
# タグを消す
    tag @s remove Landing

# 演出
    tp @s ~ ~ ~ ~ ~-5
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1 0.75
    playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 1 1.5
