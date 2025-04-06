#> asset:artifact/1106.rainbow_candy/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1106.rainbow_candy/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:entity_effect ~ ~1.2 ~ 0.4 0.4 0.4 1 7
    playsound ogg:random.levelup player @a ~ ~ ~ 0.3 2

# HPとMPを1~7回復する。HPとMPのランダム判定は独立している

# HPを1~7回復する
    execute store result storage api: Argument.Heal int 1 run random value 1..7
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# MPを1~7回復する
    execute store result storage api: Argument.Fluctuation int 1 run random value 1..7
    function api:mp/fluctuation
