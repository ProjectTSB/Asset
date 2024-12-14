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
    execute if score @s General.Mob.Tick matches 15 as @e[type=item_display,tag=RX.ModelRoot,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/pause_all
    execute if score @s General.Mob.Tick matches 15 as @e[type=item_display,tag=RX.ModelRoot,sort=nearest,limit=1] run function animated_java:illusion_of_loyalty/animations/attack_magic_1_right/play

# 警告
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/warp
    execute if score @s General.Mob.Tick matches 30 positioned ^5 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/warp
    execute if score @s General.Mob.Tick matches 30 positioned ^-5 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/warp
    execute if score @s General.Mob.Tick matches 40 positioned ^11 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/warp
    execute if score @s General.Mob.Tick matches 40 positioned ^-11 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/warp

# 斬撃エフェクト
    execute if score @s General.Mob.Tick matches 20 at @s run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/slash

# 爆発
    # 1
        execute if score @s General.Mob.Tick matches 30 at @a[distance=..32] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/vfx
        execute if score @s General.Mob.Tick matches 30 run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive
    # 2
        execute if score @s General.Mob.Tick matches 40 at @a[distance=..32] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/vfx
        execute if score @s General.Mob.Tick matches 40 positioned ^5 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/vfx
        execute if score @s General.Mob.Tick matches 40 positioned ^5 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive
        execute if score @s General.Mob.Tick matches 40 positioned ^-5 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/vfx
        execute if score @s General.Mob.Tick matches 40 positioned ^-5 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive
    # 3
        execute if score @s General.Mob.Tick matches 50 at @a[distance=..32] run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/vfx
        execute if score @s General.Mob.Tick matches 50 positioned ^11 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/vfx
        execute if score @s General.Mob.Tick matches 50 positioned ^11 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive
        execute if score @s General.Mob.Tick matches 50 positioned ^-11 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/vfx
        execute if score @s General.Mob.Tick matches 50 positioned ^-11 ^ ^ run function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/fire/blazing_slash/explosion/recursive

# リセット
    execute if score @s General.Mob.Tick matches 100.. run function asset:mob/1005.illusion_of_loyalty/tick/moveset/teleport/start
