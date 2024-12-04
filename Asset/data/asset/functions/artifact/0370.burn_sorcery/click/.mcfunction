#> asset:artifact/0370.burn_sorcery/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/370/click/

# 弾を進めるための再起開始
    execute anchored eyes positioned ^ ^ ^1.5 run function asset:artifact/0370.burn_sorcery/click/3.1.shoot

# 演出
    playsound minecraft:entity.blaze.death player @a ~ ~ ~ 1 2
    #playsound minecraft:entity.puffer_fish.death player @a ~ ~ ~ 1 0.6
    playsound minecraft:entity.iron_golem.death player @a ~ ~ ~ 1 0

    execute anchored eyes positioned ^ ^ ^1.5 rotated ~ ~90 run function asset:artifact/0370.burn_sorcery/click/particle.1
# タグを消す
    tag @s remove Landing
