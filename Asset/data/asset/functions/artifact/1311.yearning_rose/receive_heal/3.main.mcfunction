#> asset:artifact/1311.yearning_rose/receive_heal/3.main
#
#
#
# @within function asset:artifact/1311.yearning_rose/receive_heal/2.check_condition

# 演出
    execute rotated ~ 0 positioned ~ ~0.25 ~ run function asset:artifact/1311.yearning_rose/receive_heal/vfx/1
    execute rotated ~ 0 positioned ~ ~0.2 ~ run function asset:artifact/1311.yearning_rose/receive_heal/vfx/2
    playsound entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 0.5 0.7
    playsound entity.player.hurt_sweet_berry_bush player @a ~ ~ ~ 0.5 0.6
    playsound minecraft:entity.spider.step player @a
    playsound ogg:random.levelup player @a ~ ~ ~ 0.6 1.7
    #playsound ogg:random.levelup player @a ~ ~ ~ 0.6 1.6

# 調整班用数値設定箇所
# 効果時間は長めがいいな～とか
    # 効果時間
        data modify storage api: Argument.Duration set value 300
    # 攻撃補正
        data modify storage api: Argument.FieldOverride.AttackModifier set value 0.1
    # 与回復補正
        data modify storage api: Argument.FieldOverride.HealModifier set value 0.1

# バフ
    data modify storage api: Argument.ID set value 340
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset @s 10F.HealSum
