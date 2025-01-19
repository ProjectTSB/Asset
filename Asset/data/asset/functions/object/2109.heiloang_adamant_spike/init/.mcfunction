#> asset:object/2109.heiloang_adamant_spike/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2109/init

# ティアマット用
    execute if data storage asset:context this{IsDark:true} run tag @s add 2109.IsDark
    execute if entity @s[tag=2109.IsDark] run data modify entity @s item.tag.CustomModelData set value 20482

# スピード関連の設定
    data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 90
    data modify storage asset:context this.MovePerStep set value 0.7
    execute if entity @s[tag=2109.IsDark] run data modify storage asset:context this.Speed set value 4
# 初期化
    scoreboard players set @s 2109.DamageInterval 0

# 継承
    function asset:object/super.init
