#> asset:mob/1004.tultaria/tick/skill/blazing_slash/tick
#
# デケェ火の斬撃
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

#> 移動停止する用
# @private
#declare tag RW.StopMove

# 構える
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/windup

# 移動
    execute if score @s RW.Tick matches 20..40 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/follow
    #execute if score @s RW.Tick matches 1..20 run tp @s ^ ^ ^1

# 技開始直後に眼の前にプレイヤーがいたら移動せずに構える
    execute if score @s RW.Tick matches 20 if entity @p[distance=..6] positioned ^ ^ ^100 if entity @p[distance=..100] run tag @s add RW.StopMove
    execute if score @s RW.Tick matches 20 if entity @p[distance=..6] positioned ^ ^ ^100 if entity @p[distance=..100] run scoreboard players set @s RW.Tick 40

# ちょっとスピードが乗ったら滑りながら構える
    execute if score @s RW.Tick matches 21..40 if entity @p[distance=..8] positioned ^ ^ ^100 if entity @p[distance=..100] run scoreboard players set @s RW.Tick 40

# 剣を構える
    execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/slash_windup

# 慣性
    execute if score @s[tag=!RW.StopMove] RW.Tick matches 40..45 run tp @s ^ ^ ^0.5
    execute if score @s[tag=!RW.StopMove] RW.Tick matches 45..48 run tp @s ^ ^ ^0.3
    execute if score @s[tag=!RW.StopMove] RW.Tick matches 48..52 run tp @s ^ ^ ^0.1

# 振る
    execute if score @s RW.Tick matches 45 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/active
    execute if score @s RW.Tick matches 45 run tag @s remove RW.StopMove

# 形態によっては、爆炎が追加で飛ぶ
    #execute if score @s RW.Tick matches 35 anchored eyes positioned ^ ^-0.5 ^4 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    #execute if score @s RW.Tick matches 40 anchored eyes positioned ^ ^-0.5 ^6 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    #execute if score @s RW.Tick matches 45 anchored eyes positioned ^ ^-0.5 ^8 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    #execute if score @s RW.Tick matches 50 anchored eyes positioned ^ ^-0.5 ^10 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    #execute if score @s RW.Tick matches 55 anchored eyes positioned ^ ^-0.5 ^12 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    #execute if score @s RW.Tick matches 60 anchored eyes positioned ^ ^-0.5 ^14 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion
    #execute if score @s RW.Tick matches 65 anchored eyes positioned ^ ^-0.5 ^16 run function asset:mob/1004.tultaria/tick/skill/blazing_slash/explosion

# デバッグ用、この行動をループする
    #execute if score @s RW.Tick matches 90 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 100.. run function asset:mob/1004.tultaria/tick/base_move/reset
