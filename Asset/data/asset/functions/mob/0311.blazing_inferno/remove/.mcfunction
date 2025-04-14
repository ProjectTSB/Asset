#> asset:mob/0311.blazing_inferno/remove/
#
# Mobのremove時の処理
#
# @within function asset:mob/alias/311/remove

# 自分のモデルを削除
# タグが8N.ModelRoot.Targetのほうでないのは、この処理がTick処理の中から入ってない都合
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/remove/this

# 自分のマーカーを削除
    kill @e[type=marker,tag=8N.Marker,distance=..256,sort=nearest,limit=1]

# 残るタイプのオブジェクトを削除
    kill @e[type=marker,scores={ObjectID=2137},distance=..256]

# 付近のしもべを削除
    execute as @e[type=blaze,scores={MobID=313},distance=..64] run function api:mob/remove

# Super!
    function asset:mob/super.remove
