#> asset:artifact/0981.soulfire_burst/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0981.soulfire_burst/trigger/2.check_condition


# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 0.8
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1.5 1.2
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 0.5
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 0.8
    playsound minecraft:block.sculk_shrieker.break player @a ~ ~ ~ 1 1.2
    playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1.5 2

# 拡散値
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 4

# オブジェクトを放つ。ホーミングの都合で、ちょっと上向きに撃つ。
    execute anchored eyes positioned ^ ^ ^1 rotated ~ ~-5 run function asset:artifact/0981.soulfire_burst/trigger/shoot
