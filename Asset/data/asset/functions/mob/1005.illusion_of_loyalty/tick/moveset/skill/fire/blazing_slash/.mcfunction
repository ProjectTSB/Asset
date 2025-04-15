#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/
#
# コンボ攻撃→シメに爆裂攻撃
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/

# 構え
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/windup

# パーティクル
    execute if score @s General.Mob.Tick matches 7 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.5

# アニメ
    execute if score @s General.Mob.Tick matches 15 as @e[type=item_display,tag=RX.ModelRoot,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/attack_magic_1_right/tween {to_frame:0,duration:1}

# 警告
    execute if score @s General.Mob.Tick matches 0 positioned ~ ~-0.3 ~ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/alert
    execute if score @s General.Mob.Tick matches 10 positioned ^5 ^-0.3 ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/alert
    execute if score @s General.Mob.Tick matches 10 positioned ^-5 ^-0.3 ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/alert

# 斬撃エフェクト
    execute if score @s General.Mob.Tick matches 20 at @s run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/slash

# 爆発
    # 1
        execute if score @s General.Mob.Tick matches 30 positioned ~ ~-0.5 ~ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/
    # 2
        execute if score @s General.Mob.Tick matches 40 positioned ^5 ^-0.5 ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/
        execute if score @s General.Mob.Tick matches 40 positioned ^-5 ^-0.5 ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/

# リセット
    execute if score @s General.Mob.Tick matches 60.. run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/start
