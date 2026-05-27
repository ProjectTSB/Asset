#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/tick
#
# 普通には避けれないレーザーの嵐
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/windup

# 近くのプレイヤーの方にそこそこの速度で向き直る
    execute if score @s General.Mob.Tick matches 0..20 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# 警告
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot
    execute if score @s General.Mob.Tick matches 5 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot
    execute if score @s General.Mob.Tick matches 15 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot
    execute if score @s General.Mob.Tick matches 20 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot
    execute if score @s General.Mob.Tick matches 25 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot
    execute if score @s General.Mob.Tick matches 35 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot
    execute if score @s General.Mob.Tick matches 40 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot
    execute if score @s General.Mob.Tick matches 45 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/alert_laser/shoot

# Tickまたいで鳴らしたい音
    execute if score @s General.Mob.Tick matches 25 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 30 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches 35 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Mob.Tick matches 40 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1.2
    execute if score @s General.Mob.Tick matches 45 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1.4

# 攻撃の発動よりちょっと前にアニメ再生
    execute if score @s General.Mob.Tick matches 47 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_ranged_2_activate/tween {to_frame: 0, duration: 1}

# ループ開始
    execute if score @s General.Mob.Tick matches 57 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_ranged_2_loop/tween {to_frame: 0, duration: 10}

# しばらくレーザーがいっぱい飛んでくる
    execute if score @s General.Mob.Tick matches 47..77 positioned ~ ~3 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/small_laser/shoot

# メインのレーザー。
    execute if score @s General.Mob.Tick matches 47..77 positioned ~ ~3 ~ run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/super_laser/big_laser/tick

# ニュートラルポーズに戻る
    execute if score @s General.Mob.Tick matches 90.. unless block ~ ~-0.5 ~ #lib:no_collision as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/neutral/tween {to_frame: 0, duration: 5}

# おつかれタグを付与する。次の行動は絶対歩行になる。
    execute if score @s General.Mob.Tick matches 110.. run tag @s add C5.Exhausted

# リセット
    execute if score @s General.Mob.Tick matches 110.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
