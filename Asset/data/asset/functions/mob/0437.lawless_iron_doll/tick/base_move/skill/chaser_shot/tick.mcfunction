#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/tick
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/windup

# 予備動作のときに置いたマーカーがもくもくする
    execute at @e[type=marker,tag=C5.Marker.SummonPoint,distance=..256] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/marker_particle

# 近くのプレイヤーの方にそこそこの速度で向き直る
    execute if score @s General.Mob.Tick matches 0..20 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# 予備動作中の演出
    execute if score @s General.Mob.Tick matches 10..25 run particle minecraft:dust 0.5 0 1 2 ~ ~1.5 ~ 1 1 1 1 5 force @a[distance=..64]

# Tickまたいで鳴らしたい音
    execute if score @s General.Mob.Tick matches 10 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Mob.Tick matches 15 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 1.1
    execute if score @s General.Mob.Tick matches 20 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 1.3
    execute if score @s General.Mob.Tick matches 25 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 1.5

# 攻撃の発動よりちょっと前にアニメ再生
    execute if score @s General.Mob.Tick matches 27 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_ranged_2_activate/tween {to_frame: 0, duration: 1}

# 攻撃する
    execute if score @s General.Mob.Tick matches 30 positioned ~ ~2.5 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/chaser_shot/shoot

# ニュートラルポーズに戻る
    execute if score @s General.Mob.Tick matches 60 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/neutral/tween {to_frame: 0, duration: 5}

# リセット
    execute if score @s General.Mob.Tick matches 65.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
