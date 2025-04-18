#> asset:artifact/1209.sinful_scythe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1209.sinful_scythe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# エンティティの場所で実行
    execute positioned as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..10,sort=nearest,limit=1] run function asset:artifact/1209.sinful_scythe/trigger/damage
