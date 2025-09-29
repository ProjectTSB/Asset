#> asset:artifact/1306.will_o_wisp/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1306.will_o_wisp/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# ターゲット選定
# 前方の敵1体をターゲットとする
    


# エフェクト付与
    data modify storage api: Argument.ID set value 339
    data modify storage api: Argument.Duration set value 100
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..5,sort=nearest,limit=1] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
