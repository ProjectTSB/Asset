#> asset:mob/0123.lexiel_v3/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/123/init

# AJモデル召喚
    execute rotated ~ 0 run function animated_java:lexiel/summon

# 自身のモデルに待機モーションを再生させる
    execute as @e[type=item_display,tag=3F.AJ,sort=nearest,limit=1] run function animated_java:lexiel/animations/spawn/play
