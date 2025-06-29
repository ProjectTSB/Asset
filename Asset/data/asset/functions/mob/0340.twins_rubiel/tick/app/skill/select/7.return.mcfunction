#> asset:mob/0340.twins_rubiel/tick/app/skill/select/7.return
#
# 中心に戻る
#
# @within function asset:mob/0340.twins_rubiel/app/call_from_root/1.interrupt

# ランダム
# 移動位置
    execute at @e[type=marker,tag=9E.Marker.SpawnPoint,distance=..50] run summon area_effect_cloud ^-1.8 ^1 ^ {CustomNameVisible:0b,Particle:"block air",Duration:17,Tags:["Object","9G.Temp.Target.Aec.0"]}

# 移動開始
    tag @s add 9G.Skill.Sync.Goalong

# 終了
    tag @s add 9G.Temp.Animated
