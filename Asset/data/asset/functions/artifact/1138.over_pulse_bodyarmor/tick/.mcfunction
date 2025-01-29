#> asset:artifact/1138.over_pulse_bodyarmor/tick/
#
# 毎tick実行される処理
#
# @within function asset:artifact/alias/1138/tick/

# 暫くダメージを受けていないならバリア作動
    execute unless score @s VM.Tick matches 1.. if entity @s[tag=!VM.NotDamaged] run function asset:artifact/1138.over_pulse_bodyarmor/tick/absorption

# 展開中ならパーティクル
    execute if entity @s[tag=VM.HasBarrier] run particle dolphin ~ ~1.2 ~ 0.4 0.5 0.4 1 2 normal
