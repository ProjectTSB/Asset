#> asset:object/2107.heiloang_fireball/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2107/init

# ベヘモット用
    execute if data storage asset:context this{IsDark:true} run tag @s add 2107.IsDark
    execute if entity @s[tag=2107.IsDark] run data modify entity @s item.tag.CustomModelData set value 20483

# スピード関連の設定
    data modify storage asset:context this.Speed set value 2
    data modify storage asset:context this.Range set value 128
    data modify storage asset:context this.MovePerStep set value 0.9

# 継承
    function asset:object/super.init
