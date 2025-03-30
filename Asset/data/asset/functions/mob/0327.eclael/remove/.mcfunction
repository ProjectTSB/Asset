#> asset:mob/0327.eclael/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within
#   function asset:mob/alias/327/remove
#   function asset:mob/0327.eclael/init/

# 継承元の処理を実行
    function asset:mob/super.remove

# 死亡演出スキップ
    execute as @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] run function animated_java:eclael/remove/this

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_Eclael",Active:false}]
    function asset:datapack/set_activation_state
