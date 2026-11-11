#> asset:artifact/1413.lighter/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1413.lighter/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare tag Target

# 前方の敵にTagをつける
    execute positioned ^ ^ ^4 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..4] add Target

# 敵が居ない場合、前方に火柱の演出のみ発生させる
    execute positioned ^ ^ ^4 unless entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..4] run function asset:artifact/1413.lighter/trigger/vfx

# 前方に敵が居た場合、最も近い敵を中心に火柱を発生させる
    execute as @e[type=#lib:living_without_player,tag=Target,distance=..10,sort=nearest,limit=1] at @s run function asset:artifact/1413.lighter/trigger/attack

# Tagを削除
    execute positioned ^ ^ ^4 run tag @e[type=#lib:living,tag=Target,distance=..4] remove Target
