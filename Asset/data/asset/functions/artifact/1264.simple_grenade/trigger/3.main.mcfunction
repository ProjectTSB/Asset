#> asset:artifact/1264.simple_grenade/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1264.simple_grenade/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound entity.witch.throw player @a ~ ~ ~ 0.8 0.7

# 目線の位置で投げる
    execute anchored eyes positioned ^ ^-0.4 ^ run function asset:artifact/1264.simple_grenade/trigger/throw
