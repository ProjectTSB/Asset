#> asset:mob/0327.eclael/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within
#   function asset:mob/alias/327/remove
#   function asset:mob/0327.eclael/init/

# 継承元の処理実行
    function asset:mob/super.remove

# タグ更新
    tag @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] add 93.ModelRoot.Death
    tag @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] remove 93.ModelRoot

# 中心点削除
    kill @e[type=marker,tag=93.Marker.SpawnPoint,sort=nearest,limit=1]

# オブジェクト消去
    execute as @e[tag=93.Object] on passengers run kill @s
    kill @e[tag=93.Object]

# モデル削除
    function animated_java:eclael/remove/all
