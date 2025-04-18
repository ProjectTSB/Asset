#> asset:mob/0327.eclael/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/327/death

# 継承元の処理実行
    function asset:mob/super.death

# 死亡演出スキップ
    execute if entity @s[tag=93.SkipDeathFunc] as @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] run function animated_java:eclael/remove/this
    execute if entity @s[tag=93.SkipDeathFunc] run return 0

# タグ更新
    tag @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] add 93.ModelRoot.Death
    tag @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] remove 93.ModelRoot

# 一定以上離れている場合、忠臣に戻る
    execute unless entity @e[type=marker,tag=93.Marker.SpawnPoint,distance=20..] positioned as @e[type=marker,tag=93.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ~ ~ ~

# 中心点削除
    kill @e[type=marker,tag=93.Marker.SpawnPoint,sort=nearest,limit=1]

# 討伐演出再生
    tag @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] add 93.ModelRoot.Death
    data modify storage api: Argument.ID set value 2195
    execute at @s run function api:object/summon
