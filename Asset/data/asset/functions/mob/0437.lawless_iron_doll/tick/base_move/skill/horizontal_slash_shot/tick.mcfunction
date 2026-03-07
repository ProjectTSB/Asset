#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/tick
#
# 水平に飛んでいくえらくデカい斬撃。ジャンプで飛び越えれるぞ。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/windup

# 近くのプレイヤーの方にそこそこの速度で向き直る
    execute if score @s General.Mob.Tick matches 0..10 facing entity @p[gamemode=!spectator,distance=..256] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# Tickまたいで鳴らしたい音
    execute if score @s General.Mob.Tick matches 5 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.8
    execute if score @s General.Mob.Tick matches 10 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1.0
    execute if score @s General.Mob.Tick matches 15 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1.2
    execute if score @s General.Mob.Tick matches 20 run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.2
    execute if score @s General.Mob.Tick matches 20 run playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 2 1.3

# チャージ完了時に演出
    execute if score @s General.Mob.Tick matches 20 positioned ~ ~1 ~ run particle electric_spark ~ ~1.5 ~ 0.5 0.5 0.5 1.5 100 force @a[distance=..32]
    execute if score @s General.Mob.Tick matches 20 positioned ~ ~1 ~ run particle minecraft:dust 0.8 0.1 0.1 2 ~ ~1 ~ 0.8 0.8 0.8 1 50 force @a[distance=..32]

# 警告！
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/alert/

# 攻撃の発動よりちょっと前にアニメ再生
    execute if score @s General.Mob.Tick matches 27 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_2_activate/tween {to_frame: 0, duration: 1}

# 薙ぎ払い、そして飛んでいくオブジェクト
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/activate

# Blessless: 第2形態以降、ジャンプ狩りの2発目を構える
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 37 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_3_activate/tween {to_frame: 0, duration: 1}

# Blessless: 第2形態以降、ジャンプ狩りを放つ
    execute if predicate api:global_vars/difficulty/min/3_blessless if score @s[scores={C5.Phase=2..}] General.Mob.Tick matches 50 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/horizontal_slash_shot/activate_second_slash

# ニュートラルポーズに戻る、ただしBlesslessでは、直前のアニメの都合でやらない。
    execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 60 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/neutral/tween {to_frame: 0, duration: 5}

# リセット
    execute if score @s General.Mob.Tick matches 65.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
