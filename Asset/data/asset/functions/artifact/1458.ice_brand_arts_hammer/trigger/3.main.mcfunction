#> asset:artifact/1458.ice_brand_arts_hammer/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1458.ice_brand_arts_hammer/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
#アイシクルライン処理
    data modify storage api: Argument.ID set value 365
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run data modify storage api: Argument.Fluctuation set value 40
    execute if data storage api: Return.Effect run function api:mp/fluctuation
# 攻撃時演出
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..6] run function asset:artifact/1458.ice_brand_arts_hammer/trigger/direction

#対象に大ダメージ
# 引数を set
    data modify storage api: Argument.Damage set value 700f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# 実行(攻撃対象にダメージ)
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..6] run function api:damage/
# リセット
    function api:damage/reset

# 近くの敵も巻き込む
# 引数を set
    data modify storage api: Argument.Damage set value 300f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
# 補正functionを実行
    function api:damage/modifier
# 実行(攻撃対象にダメージ)
    execute at @e[type=#lib:living_without_player,tag=Victim,distance=..6] as @e[type=#lib:living_without_player,tag=!Victim,distance=..3] run function api:damage/
# リセット
    function api:damage/reset
