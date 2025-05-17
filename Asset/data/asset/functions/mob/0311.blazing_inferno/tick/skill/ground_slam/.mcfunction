#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/
#
# 上から来るぞ！気をつけろ！
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# 一旦消える
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/warp

# しばらくすると足元マーカーが出てくる！
    execute if score @s General.Mob.Tick matches 20 at @r[distance=..64] align xyz positioned ~0.5 ~ ~0.5 run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/

# 落下アニメしつつマーカーに瞬間移動する
    execute if score @s General.Mob.Tick matches 50 at @e[type=marker,tag=8N.Marker.Target,sort=nearest,limit=1] run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/teleport

# 大爆発
    execute if score @s General.Mob.Tick matches 55 run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/explosion

# 追撃
    # ハードでないなら本気モードに実行、5本
        execute unless predicate api:global_vars/difficulty/min/3_blessless if score @s[tag=8N.Health.50Per] General.Mob.Tick matches 55..60 run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/laser/
    # ハードでは最初からやるし数も多い、10本
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 55..65 run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/laser/
    # ハードだとプレイヤー全員の座標に置いてくる
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 66 at @a[distance=..32] run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/laser/aiming

# 待機アニメを再生
    # ハード未満、本気でないとき
        execute unless predicate api:global_vars/difficulty/min/3_blessless if score @s[tag=!8N.Health.50Per] General.Mob.Tick matches 80 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/tween {duration:20,to_frame:0}
    # ハード未満、本気のとき
        execute unless predicate api:global_vars/difficulty/min/3_blessless if score @s[tag=8N.Health.50Per] General.Mob.Tick matches 120 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/tween {duration:20,to_frame:0}
    # ハード以上
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 120 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/tween {duration:20,to_frame:0}

# 元の地点に戻る
    # ハード未満
        execute unless predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 140 at @s run function asset:mob/0311.blazing_inferno/tick/base_move/return_to_rail
    # ハード以上
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 120 at @s run function asset:mob/0311.blazing_inferno/tick/base_move/return_to_rail

# リセット
    execute if score @s General.Mob.Tick matches 160 run function asset:mob/0311.blazing_inferno/tick/base_move/reset
