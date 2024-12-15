#> asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/tick
#
# コンボ攻撃→シメに爆裂攻撃
#
# @within function asset:mob/1004.tultaria/tick/base_move/skill_active

# 構え
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/windup

# パーティクル
    execute if score @s General.Mob.Tick matches 7 at @e[type=marker,tag=RW.ModelLocator.RightHand,sort=nearest,limit=1] run particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.2 20
    execute if score @s General.Mob.Tick matches 7 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5

# アニメ
    execute if score @s General.Mob.Tick matches 15 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_melee_2/play

# 警告
    execute if score @s General.Mob.Tick matches 0 positioned ~ ~-1 ~ run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/alert
    execute if score @s[scores={RW.Phase=2..}] General.Mob.Tick matches 10 positioned ^5 ^-1 ^ run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/alert
    execute if score @s[scores={RW.Phase=2..}] General.Mob.Tick matches 10 positioned ^-5 ^-1 ^ run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/alert
    execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 20 positioned ^11 ^-1 ^ run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/alert
    execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 20 positioned ^-11 ^-1 ^ run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/alert

# 斬撃エフェクト
    execute if score @s General.Mob.Tick matches 20 at @s run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/slash

# 爆発
    # 1
        execute if score @s General.Mob.Tick matches 30 positioned ~ ~-1 ~ run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/
    # 2
        execute if score @s[scores={RW.Phase=2..}] General.Mob.Tick matches 40 positioned ^5 ^-1 ^ run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/
        execute if score @s[scores={RW.Phase=2..}] General.Mob.Tick matches 40 positioned ^-5 ^-1 ^ run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/
    # 3
        execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 50 positioned ^11 ^-1 ^ run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/
        execute if score @s[scores={RW.Phase=3..}] General.Mob.Tick matches 50 positioned ^-11 ^-1 ^ run function asset:mob/1004.tultaria/tick/skill/fire/blazing_slash/explosion/

# 待機アニメを再生
    execute if score @s General.Mob.Tick matches 65 as @e[type=item_display,tag=RW.ModelRoot,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral_air/tween {duration:5, to_frame: 0}

# デバッグ用、この行動をループする
#    execute if score @s General.Mob.Tick matches 90 run scoreboard players set @s General.Mob.Tick -10

# リセット
    execute if score @s General.Mob.Tick matches 100.. run function asset:mob/1004.tultaria/tick/base_move/reset
