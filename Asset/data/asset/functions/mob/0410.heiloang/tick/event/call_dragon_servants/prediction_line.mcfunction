#> asset:mob/0410.heiloang/tick/event/call_dragon_servants/prediction_line
#
# コール：ドラゴンサーヴァント
#
# @within asset:mob/0410.heiloang/tick/event/call_dragon_servants/

# # 対象決定
#     tag @e[type=item_display,tag=2181.Line,tag=!2181.Line.End,sort=random,limit=1] add BF.Temp.Dummy
#     tp @e[type=item_display,tag=2181.Line,tag=BF.Temp.Dummy,limit=1] ~ ~ ~ 0 0

# プレイヤーを向く
    execute facing entity @p[tag=!PlayerShouldInvulnerable,distance=..80] eyes rotated ~ ~1 run function lib:rotate_display/

# 距離測定
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..80] run function lib:distance/as_to_at
    execute store result entity @s transformation.scale[2] float 0.001 run data get storage lib: Return.Distance 1000
    data remove storage lib: Return
