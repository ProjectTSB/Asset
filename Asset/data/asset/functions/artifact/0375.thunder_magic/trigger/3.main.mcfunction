#> asset:artifact/0375.thunder_magic/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0375.thunder_magic/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う mainhand/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

#> Private
# @private
    #declare tag Target

# 前方の敵にTagをつける
    execute positioned ^ ^ ^7 run tag @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..7] add Target

# 敵が居ない場合
    execute positioned ^ ^ ^7 unless entity @e[type=#lib:living,tag=Target,distance=..7] run function asset:artifact/0375.thunder_magic/trigger/damage

# 前方に敵が居た場合
    execute positioned ^ ^ ^7 if entity @e[type=#lib:living,tag=Target,distance=..7] at @s at @e[type=#lib:living,tag=Target,distance=..20,sort=nearest,limit=1] run function asset:artifact/0375.thunder_magic/trigger/damage

# Tagを削除
    execute positioned ^ ^ ^7 run tag @e[type=#lib:living,tag=Target,distance=..7] remove Target
