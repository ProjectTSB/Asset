#> asset:artifact/1252.fox_candle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1252.fox_candle/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/offhand

# ここから先は神器側の効果の処理を書く

# 最大ターゲット数
    data modify storage asset:temp Temp.Count set value 3

# この神器のDoTが付与されていない敵を優先的にターゲッティングする
    execute as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..16,sort=random] run function asset:artifact/1252.fox_candle/trigger/target_select/no_debuff

# まだターゲッティングできるならなんでもいいからターゲットにする
    execute unless data storage asset:temp Temp{Count:0} run function asset:artifact/1252.fox_candle/trigger/target_select/m with storage asset:temp Temp

# ターゲットに対して諸々実行する
    function asset:artifact/1252.fox_candle/trigger/damage_and_effect

# リセット
    tag @e[type=#lib:living_without_player,tag=YS.Target,tag=!Uninterferable,distance=..16] remove YS.Target
    scoreboard players reset @s YS.DamagePerSum
