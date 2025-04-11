#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/prediction_line
#
# テルツェット・ラグナレク
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/

# 移動
    tp @s ~ ~ ~ 0 0

# プレイヤーを向く
    execute facing entity @p[tag=BG.MainTarget] eyes rotated ~ ~1 run function lib:rotate_display/

# 距離測定
    execute as @p[tag=BG.MainTarget] run function lib:distance/as_to_at
    execute store result entity @s transformation.scale[2] float 0.001 run data get storage lib: Return.Distance 1000
    data remove storage lib: Return
