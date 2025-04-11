#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/tick
#
# ブーメランみたいに戻って来る奇っ怪な衝撃波。チャージ長め。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 予備動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/windup

# Tickまたいで鳴らしたい音
    execute if score @s General.Mob.Tick matches 5 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.5
    execute if score @s General.Mob.Tick matches 10 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.7
    execute if score @s General.Mob.Tick matches 15 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 0.9
    execute if score @s General.Mob.Tick matches 20 run playsound ogg:mob.breeze.charge1 hostile @a ~ ~ ~ 2 1.1
    execute if score @s General.Mob.Tick matches 20 run playsound block.anvil.place hostile @a ~ ~ ~ 2 2

# 警告！
    execute if score @s General.Mob.Tick matches 10 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/alert/

# 攻撃の発動よりちょっと前にアニメ再生
    execute if score @s General.Mob.Tick matches 22 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/attack_melee_3_activate/tween {to_frame: 0, duration: 1}

# 薙ぎ払い、そして飛んでいくオブジェクト
    execute if score @s General.Mob.Tick matches 25 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/shockwave/activate

# ニュートラルポーズに戻る
    execute if score @s General.Mob.Tick matches 50 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/neutral/tween {to_frame: 0, duration: 5}

# リセット
    execute if score @s General.Mob.Tick matches 60.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
