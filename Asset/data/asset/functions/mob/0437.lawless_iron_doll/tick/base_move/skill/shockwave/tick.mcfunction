#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/tick
#
# 自分の周りでぐるぐる回る奇っ怪な斬撃。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/windup

# 予備動作中の演出
    execute if score @s General.Mob.Tick matches 5..20 run particle minecraft:dust 0.7 0 0 2 ~ ~1.5 ~ 1 1 1 1 5 force @a[distance=..64]

# Tickまたいで鳴らしたい音
    execute if score @s General.Mob.Tick matches 5 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 10 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches 15 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Mob.Tick matches 20 run playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 2 1.2
    execute if score @s General.Mob.Tick matches 20 run playsound ogg:block.smithing_table.smithing_table2 player @a ~ ~ ~ 2 1.5

# チャージ完了時に演出
    execute if score @s General.Mob.Tick matches 20 positioned ~ ~1 ~ run particle electric_spark ~ ~1.5 ~ 0.5 0.5 0.5 1.5 100 force @a[distance=..32]
    execute if score @s General.Mob.Tick matches 20 positioned ~ ~1 ~ run particle end_rod ~ ~1.5 ~ 0.5 0.5 0.5 0.2 20 force @a[distance=..32]

# 攻撃の発動よりちょっと前にアニメ再生
    execute if score @s General.Mob.Tick matches 27 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_2_activate/tween {to_frame: 0, duration: 1}

# 薙ぎ払い、そして飛んでいくオブジェクト
    execute if score @s General.Mob.Tick matches 30 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/activate

# ニュートラルポーズに戻る
    execute if score @s General.Mob.Tick matches 55 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/neutral/tween {to_frame: 0, duration: 15}

# リセット
    execute if score @s General.Mob.Tick matches 70.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
