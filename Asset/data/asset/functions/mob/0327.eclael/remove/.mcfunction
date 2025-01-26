#> asset:mob/0327.eclael/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within
#   function asset:mob/alias/327/remove
#   function asset:mob/0327.eclael/init/

# 死亡演出スキップ
    tag @s add 93.SkipDeathFunc

# 消去終了
    tp @s ~ ~-100 ~
    kill @s
