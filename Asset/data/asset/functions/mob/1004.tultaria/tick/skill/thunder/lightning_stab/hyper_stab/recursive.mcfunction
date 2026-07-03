#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/recursive
#
# 目に見えない突進
#
# @within function
#   asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/tick
#   asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/recursive
#   asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/

# パーティクル
    particle electric_spark ~ ~1 ~ 0 0 0 0.5 5 force @a[distance=..60]
    particle minecraft:dust 1 1 0.2 1 ~ ~1 ~ 0.1 0.1 0.1 0 10 force @a[distance=..30]

# 壁があったらそこにワープする
    execute positioned ^ ^ ^1 unless block ~ ~1 ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ ~

# ダメージ判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/damage

# 壁がなかったり、遠すぎたりしなければ再帰: returnを入れることで、これの実行に成功した場合はこれより下を実行しない
    execute if entity @s[distance=..16] positioned ^ ^ ^1 if block ~ ~1 ~ #lib:no_collision/ run return run function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/recursive

# 壁がなくても遠かったらそこにワープする
    tp @s ~ ~ ~
