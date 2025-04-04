#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/tick
#
# スーパー叩きつけ攻撃
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/windup

# 近くのプレイヤーの方にそこそこの速度で向き直る
    execute if score @s General.Mob.Tick matches 0..20 facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# ふわ～
    execute if score @s General.Mob.Tick matches 25..40 rotated ~ 0 run tp @s ^ ^0.5 ^0.5
    execute if score @s General.Mob.Tick matches 41..45 rotated ~ 0 run tp @s ^ ^0.3 ^0.5
    execute if score @s General.Mob.Tick matches 46..50 rotated ~ 0 run tp @s ^ ^0.2 ^0.5

# ひゅーん
    execute if score @s General.Mob.Tick matches 50..90 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/fall
    execute if score @s General.Mob.Tick matches 50..90 at @s unless block ~ ~-1 ~ #lib:no_collision run scoreboard players set @s General.Mob.Tick 90

# 爆発
    execute if score @s General.Mob.Tick matches 90 at @s run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_slam/explosion

# ニュートラルポーズに戻る
    execute if score @s General.Mob.Tick matches 120 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/neutral/tween {to_frame: 0, duration: 10}

# リセット
    execute if score @s General.Mob.Tick matches 120.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
