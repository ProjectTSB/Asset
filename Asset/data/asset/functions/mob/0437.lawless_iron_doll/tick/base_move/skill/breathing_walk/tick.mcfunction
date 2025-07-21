#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/breathing_walk/tick
#
# のんびり歩く。接触ダメージ以外は隙を晒すだけの行動。
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/active

#> インターバルのスコアホルダー
# @private
    #declare score_holder $Interval

# アニメ再生
    execute if score @s General.Mob.Tick matches 0 as @e[type=item_display,tag=C5.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:lawless_iron_doll/animations/walk/tween {to_frame: 0, duration: 5}

# しばらく歩く
    execute if score @s General.Mob.Tick matches 5.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/breathing_walk/walk_tick

# リセット
    # ハード以下
        execute if predicate api:global_vars/difficulty/max/2_hard if score @s General.Mob.Tick matches 60.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
    # Blessless以上
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 100.. run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/reset
