#> asset:artifact/0376.ray_sorcery/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/376/click/


# 弾を進めるための再起開始
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0376.ray_sorcery/click/3.1.shoot

# 演出
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    playsound minecraft:entity.wither.hurt player @a ~ ~ ~ 1 1.5

# タグを消す
    tag @s remove Landing