#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/tick
#
# 突進技
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

# 付近に誰もいない場合は、突進の開始までスコアを進める
   execute if score @s General.Mob.Tick matches 0 unless entity @p[gamemode=!spectator,distance=..24] run scoreboard players set @s General.Mob.Tick 12

# 突進のスタート動作
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/start

# ジャンプっぽい感じでTP
    execute if score @s General.Mob.Tick matches 0..2 rotated ~ 0 run tp @s ^ ^0.5 ^-1
    execute if score @s General.Mob.Tick matches 3..4 rotated ~ 0 run tp @s ^ ^0.2 ^-1
    execute if score @s General.Mob.Tick matches 5 rotated ~ 0 run tp @s ^ ^0.1 ^-1
    execute if score @s General.Mob.Tick matches 6..8 rotated ~ 0 run tp @s ^ ^-0.5 ^-1
    execute if score @s General.Mob.Tick matches 9..10 rotated ~ 0 run tp @s ^ ^-0.2 ^-1
    execute if score @s General.Mob.Tick matches 11 rotated ~ 0 run tp @s ^ ^-0.1 ^-1

# 突進アニメ再生
    execute if score @s General.Mob.Tick matches 12 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/run2/tween {to_frame: 0, duration: 5}

# 突進中のTick処理
    execute if score @s General.Mob.Tick matches 12..30 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/charge_tick

# ブレーキのTick処理
    execute if score @s General.Mob.Tick matches 30..45 run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/charge/breaking_tick

# ニュートラルポーズに戻る
    execute if score @s General.Mob.Tick matches 50 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/neutral/tween {to_frame: 0, duration: 5}

# リセット
    execute if score @s General.Mob.Tick matches 50.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
