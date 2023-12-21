#> asset:mob/1004.tultaria/tick/skill/blazing_slash/tick
#
# デケェ火の斬撃
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/windup

# 追尾移動
    execute if score @s RW.Tick matches 0..60 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/follow

# 眼の前にプレイヤーがいたら構える
    execute if score @s RW.Tick matches 10..60 if entity @p[distance=..8] positioned ^ ^ ^100 if entity @p[distance=..100] run scoreboard players set @s RW.Tick 60

# 剣を構える
    execute if score @s RW.Tick matches 60 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/slash_windup

# 慣性
    execute if score @s RW.Tick matches 60..65 run tp @s ^ ^ ^0.5
    execute if score @s RW.Tick matches 65..68 run tp @s ^ ^ ^0.3
    execute if score @s RW.Tick matches 68..72 run tp @s ^ ^ ^0.1

# 振る
    execute if score @s RW.Tick matches 70 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/active

# 形態によっては、爆炎が追加で飛ぶ
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 50 anchored eyes positioned ^ ^-0.5 ^4 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 55 anchored eyes positioned ^ ^-0.5 ^6 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 60 anchored eyes positioned ^ ^-0.5 ^8 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 65 anchored eyes positioned ^ ^-0.5 ^10 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 70 anchored eyes positioned ^ ^-0.5 ^12 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 75 anchored eyes positioned ^ ^-0.5 ^14 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    execute if score @s[scores={RW.Phase=2..}] RW.Tick matches 80 anchored eyes positioned ^ ^-0.5 ^16 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 90 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 100.. run function asset:mob/1004.tultaria/tick/base_move/reset
