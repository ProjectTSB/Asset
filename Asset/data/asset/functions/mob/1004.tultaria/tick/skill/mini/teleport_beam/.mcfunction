#> asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/
#
#
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# モデルを自分の向きに
    execute if score @s RW.Tick matches 0.. at @s rotated ~ 0 run tp @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] @s

# 移動
    execute if score @s RW.Tick matches 0 run data modify storage lib: Argument.Bounds set value [[10d,10d],[0.0d,0.0d],[10d,10d]]
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/base_move/teleport/

# 予告
    execute if score @s RW.Tick matches 0..20 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/alert

# ゆっくりと狙う
    execute if score @s RW.Tick matches 0..28 facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1000 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~

# 射撃
    execute if score @s RW.Tick matches 20 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/shoot
    execute if score @s RW.Tick matches 22 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/shoot
    execute if score @s RW.Tick matches 24 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/shoot
    execute if score @s RW.Tick matches 26 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/shoot
    execute if score @s RW.Tick matches 28 positioned ~ ~1.5 ~ positioned ^ ^ ^1 run function asset:mob/1004.tultaria/tick/skill/mini/teleport_beam/beam/shoot

# 移動
    execute if score @s RW.Tick matches 40 run data modify storage lib: Argument.Bounds set value [[10d,10d],[0.0d,0.0d],[10d,10d]]
    execute if score @s RW.Tick matches 40 run function asset:mob/1004.tultaria/tick/base_move/teleport/

# デバッグ用、この行動をループする
    #execute if score @s RW.Tick matches 40.. run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 50 run function asset:mob/1004.tultaria/tick/skill/mini/reset