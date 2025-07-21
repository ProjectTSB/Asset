#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/tick
#
# スーパー叩きつけ攻撃
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/windup

# 警告
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/alert
    execute if score @s General.Mob.Tick matches 5 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/alert
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/alert
    execute if score @s General.Mob.Tick matches 15 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/alert
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/alert

# 近くのプレイヤーの方にそこそこの速度で向き直る
    execute if score @s General.Mob.Tick matches 0..20 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# Tickまたいで鳴らしたい音
    execute if score @s General.Mob.Tick matches 10 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 15 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches 20 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Mob.Tick matches 25 run playsound minecraft:entity.iron_golem.attack hostile @a ~ ~ ~ 2 1

# ふわ～
    execute if score @s General.Mob.Tick matches 25..30 run tp @s ~ ~0.5 ~
    execute if score @s General.Mob.Tick matches 31..35 run tp @s ~ ~0.3 ~
    execute if score @s General.Mob.Tick matches 36..50 run tp @s ~ ~0.2 ~

# チャージ音的な
    execute if score @s General.Mob.Tick matches 30 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 3 1.5
    execute if score @s General.Mob.Tick matches 30 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 3 1.7
    execute if score @s General.Mob.Tick matches 40 run playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 3 1.5
    execute if score @s General.Mob.Tick matches 40 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 3 2

# マーカーがあるところ、つまり召喚地点まで落ちる
    execute if score @s General.Mob.Tick matches 50..52 at @s positioned ~-5 ~ ~-5 if entity @e[type=marker,tag=C5.Marker.SlamPoint,dx=9,dy=-1,dz=9,limit=1] at @s run scoreboard players set @s General.Mob.Tick 53
    execute if score @s General.Mob.Tick matches 50..52 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/fall_stacked

# 爆発
    execute if score @s General.Mob.Tick matches 53 at @s align y run tp @s ~ ~ ~
    execute if score @s General.Mob.Tick matches 53 at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/explosion

# おつかれタグを付与する。次の行動は絶対歩行になる。
    execute if score @s General.Mob.Tick matches 90.. run tag @s add C5.Exhausted

# リセット
    execute if score @s General.Mob.Tick matches 90.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
