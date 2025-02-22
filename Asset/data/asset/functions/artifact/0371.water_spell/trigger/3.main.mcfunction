#> asset:artifact/0371.water_spell/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0371.water_spell/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 敵が居ない場合
    execute positioned ^ ^ ^4 unless entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..4] run function asset:artifact/0371.water_spell/trigger/attack

# 前方に敵が居た場合
    execute positioned ^ ^ ^4 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..4] at @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..4,sort=nearest,limit=1] run function asset:artifact/0371.water_spell/trigger/attack
