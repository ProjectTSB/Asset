#> asset:object/2108.heiloang_fireball_aec/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2108/init

# ベヘモット用
    execute if data storage asset:context this{IsDark:true} run tag @s add 2108.IsDark

# スコア初期化
    scoreboard players set @s 2108.DamageInterval 0
