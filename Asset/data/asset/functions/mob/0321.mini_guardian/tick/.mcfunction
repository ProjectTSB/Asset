#> asset:mob/0321.mini_guardian/tick/
#
# Mobのtick時の処理
#
# @within function asset:mob/alias/321/tick

# スコア関連
    scoreboard players remove @s[scores={8X.HurtTime=0..}] 8X.HurtTime 1

# 付近にプレイヤーがいたら攻撃待機
    execute if entity @p[gamemode=!spectator,distance=..8] run tag @s add 8X.Mode.Attack

# 攻撃モード
    execute if entity @s[tag=8X.Mode.Attack] anchored eyes positioned ^ ^ ^1 positioned ~ ~-0.1 ~ run function asset:mob/0321.mini_guardian/tick/event/attack_mode

# 遠くに離れたら攻撃モード終了
    execute if entity @s[tag=8X.Mode.Attack] unless entity @p[gamemode=!spectator,distance=..15] run function asset:mob/0321.mini_guardian/tick/event/reset

# super.tick
    function asset:mob/super.tick

# のけぞりから復帰
    data modify entity @s[scores={8X.HurtTime=..0}] NoAI set value 1b
