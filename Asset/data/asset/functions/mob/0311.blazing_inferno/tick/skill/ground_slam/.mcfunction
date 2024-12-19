#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/
#
# 上から来るぞ！気をつけろ！
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# 一旦消える
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/warp

# しばらくすると足元マーカーが出てくる！
    execute if score @s General.Mob.Tick matches 20 at @r[distance=..64] run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert

# 落下アニメしつつマーカーに瞬間移動する
    execute if score @s General.Mob.Tick matches 40 at @e[type=marker,tag=8N.Marker.Target,sort=nearest,limit=1] run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/teleport

# 大爆発
    execute if score @s General.Mob.Tick matches 45 run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/explosion

# 待機アニメを再生
    execute if score @s General.Mob.Tick matches 75 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/tween {duration:5,to_frame:0}

# 元の地点に戻る
    execute if score @s General.Mob.Tick matches 100 at @s run function asset:mob/0311.blazing_inferno/tick/base_move/return_to_rail

# リセット
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/0311.blazing_inferno/tick/base_move/reset
