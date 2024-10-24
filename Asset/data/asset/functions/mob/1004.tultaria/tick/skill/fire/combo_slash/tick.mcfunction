#> asset:mob/1004.tultaria/tick/skill/fire/combo_slash/tick
#
# コンボ攻撃→シメに爆裂攻撃
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# プレイヤーをゆっくりと追いかける
#    execute if score @s RW.Tick matches ..68 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/pursuit

# 移動先を決定
#    execute if score @s RW.Tick matches 0 at @r run summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 構え
    execute if score @s RW.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/windup

# アニメ
    execute if score @s RW.Tick matches 15 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_2/play


# 警告
    execute if score @s RW.Tick matches 20 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/warp
    execute if score @s RW.Tick matches 30 positioned ^5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/warp
    execute if score @s RW.Tick matches 30 positioned ^-5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/warp
    execute if score @s RW.Tick matches 40 positioned ^11 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/warp
    execute if score @s RW.Tick matches 40 positioned ^-11 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/warp

# 斬撃エフェクト
    execute if score @s RW.Tick matches 20 at @s run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/slash

# 爆発
    # 1
        execute if score @s RW.Tick matches 30 at @a[distance=..32] run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/vfx
        execute if score @s RW.Tick matches 30 run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/recursive
    # 2
        execute if score @s RW.Tick matches 40 at @a[distance=..32] run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/vfx
        execute if score @s RW.Tick matches 40 positioned ^5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/vfx
        execute if score @s RW.Tick matches 40 positioned ^5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/recursive
        execute if score @s RW.Tick matches 40 positioned ^-5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/vfx
        execute if score @s RW.Tick matches 40 positioned ^-5 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/recursive
    # 3
        execute if score @s RW.Tick matches 50 at @a[distance=..32] run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/vfx
        execute if score @s RW.Tick matches 50 positioned ^11 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/vfx
        execute if score @s RW.Tick matches 50 positioned ^11 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/recursive
        execute if score @s RW.Tick matches 50 positioned ^-11 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/vfx
        execute if score @s RW.Tick matches 50 positioned ^-11 ^ ^ run function asset:mob/1004.tultaria/tick/skill/fire/combo_slash/explosion/recursive

# デバッグ用、この行動をループする
    execute if score @s RW.Tick matches 90 run scoreboard players set @s RW.Tick -10

# リセット
    execute if score @s RW.Tick matches 100.. run function asset:mob/1004.tultaria/tick/base_move/reset
