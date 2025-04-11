#> asset:object/2182.heiloang_thunderball/tick/prediction_line
#
# Objectのtick時の処理
#
# @within asset:object/2182.heiloang_thunderball/tick/get_player

# 氷柱ヒット判定
    execute at @p[tag=2182.TargetPlayer] if entity @e[type=item_display,tag=2180.Pillar,distance=..4] run tag @s add 2182.Hit
    execute if entity @s[tag=2182.Hit] at @p[tag=2182.TargetPlayer] run tag @e[type=item_display,tag=2180.Pillar,sort=nearest,limit=1] add 2182.Hit

# プレイヤーを向く
    execute if entity @s[tag=!2182.Hit] facing entity @p[tag=2182.TargetPlayer] feet rotated ~ ~ run function lib:rotate_display/
    execute if entity @s[tag=2182.Hit] facing entity @e[type=item_display,tag=2180.Pillar,tag=2182.Hit] feet run function lib:rotate_display/

# 距離測定
    execute if entity @s[tag=!2182.Hit] as @p[tag=2182.TargetPlayer] run function lib:distance/as_to_at
    execute if entity @s[tag=2182.Hit] as @e[type=item_display,tag=2180.Pillar,tag=2182.Hit] run function lib:distance/as_to_at
    execute store result entity @s transformation.scale[2] float 0.001 run data get storage lib: Return.Distance 1000
    data remove storage lib: Return

# 終了
    execute if entity @s[tag=2182.Hit] run tag @e[type=item_display,tag=2180.Pillar,tag=2182.Hit] remove 2182.Hit
    tag @s remove 2182.Hit
