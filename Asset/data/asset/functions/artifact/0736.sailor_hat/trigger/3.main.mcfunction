#> asset:artifact/0736.sailor_hat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0736.sailor_hat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# vfx
    execute rotated ~ 0 positioned ~ ~1.2 ~ positioned ^ ^ ^-0.5 run function asset:artifact/0736.sailor_hat/trigger/vfx
    playsound entity.player.splash.high_speed player @a ~ ~ ~ 0.4 2 0
