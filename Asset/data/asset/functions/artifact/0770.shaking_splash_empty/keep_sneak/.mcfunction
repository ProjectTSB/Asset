#> asset:artifact/0770.shaking_splash_empty/keep_sneak/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/770/keep_sneak/


# 演出
    playsound entity.wither.shoot player @a ~ ~ ~ 0.1 2 0
    particle dust 0.8 500000000 1000000000 1 ~ ~1.2 ~ 0.4 1 0.4 0 10
    particle firework ~ ~1.2 ~ 0 0.3 0 0.5 20

# ラスト1回でgive
    execute unless data storage asset:context Items.mainhand.id run playsound block.brewing_stand.brew player @a ~ ~ ~ 0.5 1.1
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 769
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id
