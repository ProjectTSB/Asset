#> asset:mob/1004.tultaria/tick/base_move/teleport/vfx
#
#
#
# @within
#   function asset:mob/1004.tultaria/tick/base_move/teleport/
#   function asset:mob/1004.tultaria/tick/skill/spread_shot/tick

# パーティクル
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]
    particle minecraft:end_rod ~ ~ ~ 0 0 0 0.2 15 force @a[distance=..30]

# サウンド
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1
