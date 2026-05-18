#> asset:artifact/0246.magical_cane/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0246.magical_cane/trigger/2.check_condition

# ここから先は神器側の効果の処理を書く

# 使用時のMPの数値によって演出がかわるよ
    function api:mp/get_current
    execute store result score $MagicalCane Temporary run data get storage api: Return.CurrentMP
    execute if score $MagicalCane Temporary matches 0..149 run function asset:artifact/0246.magical_cane/trigger/3.1.weak_hit
    execute if score $MagicalCane Temporary matches 150..399 run function asset:artifact/0246.magical_cane/trigger/3.2.strong_hit
    execute if score $MagicalCane Temporary matches 400.. run function asset:artifact/0246.magical_cane/trigger/3.3.hyper_hit

# $MagicalCaneに現在のスコアx12の数値を持たせる
    scoreboard players operation $MagicalCane Temporary *= $12 Const

# ぶん殴ったやつにさっきもたせた数値ぶんの魔法無属性のダメージをぶちかます
    execute store result storage api: Argument.Damage float 1 run scoreboard players get $MagicalCane Temporary
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"

# 補正実行
    function api:damage/modifier

# ダメージを受けろ！
    execute as @e[type=#lib:living_without_player,tag=Victim,distance=..10] run function api:damage/

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# リセット
    function api:damage/reset
    scoreboard players reset $MagicalCane Temporary
