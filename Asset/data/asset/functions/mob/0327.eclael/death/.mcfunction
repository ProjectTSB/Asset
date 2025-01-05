#> asset:mob/0327.eclael/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/327/death

# 継承元の処理実行
    function asset:mob/super.death

# TODO:以下仮の実装
    # 天候を戻す
        weather clear

# タグ更新
    tag @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] add 93.ModelRoot.Death
    tag @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] remove 93.ModelRoot

# 中心点削除
    kill @e[type=marker,tag=93.Marker.SpawnPoint,sort=nearest,limit=1]

# TODO:とりあえずモデル消去
    function animated_java:eclael/remove/all

# 討伐演出再生
    # schedule function asset:mob/0327.eclael/death/app.1.animation_schedule_loop 1t replace
