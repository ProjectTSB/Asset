#> asset:mob/0187.flame_mage/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0187.flame_mage/tick/1.trigger

# パーティクル
    particle minecraft:falling_dust red_terracotta ~ ~1 ~ 0.1 0 0.1 0 1

# 付近にプレイヤーがいるならスコア加算 Predicateなどが完成したらそれに移行したい
# 70以上なら強制的に実行
# 実行順の関係で強制実行を先に配置
    execute if entity @s[scores={57.Attack=70..}] run scoreboard players add @s 57.Attack 1
    execute unless entity @s[scores={57.Attack=70..}] positioned ^ ^ ^10 if entity @p[distance=..10] run scoreboard players add @s 57.Attack 1

# 予備動作演出
    execute if entity @s[scores={57.Attack=71..74}] facing entity @p[gamemode=!spectator] eyes anchored eyes positioned ^ ^ ^1 run function asset:mob/0187.flame_mage/tick/vfx/1
    execute if entity @s[scores={57.Attack=74..77}] facing entity @p[gamemode=!spectator] eyes anchored eyes positioned ^ ^ ^1 run function asset:mob/0187.flame_mage/tick/vfx/2
    execute if entity @s[scores={57.Attack=77..79}] facing entity @p[gamemode=!spectator] eyes anchored eyes positioned ^ ^ ^1 run function asset:mob/0187.flame_mage/tick/vfx/3

# 実行
    execute if entity @s[scores={57.Attack=80..}] run function asset:mob/0187.flame_mage/tick/3.shoot_magic

# 射撃攻撃キャンセル
    execute unless entity @p[distance=..20] run scoreboard players reset @s 57.Attack
