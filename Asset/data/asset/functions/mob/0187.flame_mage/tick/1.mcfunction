#> asset:mob/0187.flame_mage/tick/1
#
# Mobのtick時の処理
#
# @within function asset:mob/0187.flame_mage/_/tick

# パーティクル
    particle minecraft:falling_dust red_terracotta ~ ~1 ~ 0.1 0 0.1 0 1

# 付近にプレイヤーがいるならスコア加算 Predicateなどが完成したらそれに移行したい
    execute positioned ^ ^ ^10 if entity @p[distance=..10] run scoreboard players add @s 57.Tick 1

# 0以上なら強制的に実行
# 実行順の関係で強制実行を先に配置
    execute if entity @s[scores={57.Tick=0..}] run scoreboard players add @s 57.Tick 1
    execute unless entity @s[scores={57.Tick=0..}] positioned ^ ^ ^10 if entity @p[distance=..10] run scoreboard players add @s 57.Tick 1

# 予備動作演出
    execute if entity @s[scores={57.Tick=1..2}] facing entity @p eyes anchored eyes positioned ^ ^ ^1 run function asset:mob/0187.flame_mage/tick/vfx/1
    execute if entity @s[scores={57.Tick=4..5}] facing entity @p eyes anchored eyes positioned ^ ^ ^1 run function asset:mob/0187.flame_mage/tick/vfx/2
    execute if entity @s[scores={57.Tick=7..8}] facing entity @p eyes anchored eyes positioned ^ ^ ^1 run function asset:mob/0187.flame_mage/tick/vfx/3

# 攻撃
    execute if entity @s[scores={57.Tick=10..}] run function asset:mob/0187.flame_mage/tick/2.shoot_magic

# 射撃攻撃キャンセル
    execute unless entity @p[distance=..20] unless entity @s[scores={57.Tick=0..}] run scoreboard players set @s 57.Tick -60
