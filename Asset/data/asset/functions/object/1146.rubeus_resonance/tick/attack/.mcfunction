#> asset:object/1146.rubeus_resonance/tick/attack/
#
# 攻撃処理
#
# @within function asset:object/1146.rubeus_resonance/tick/

# 特定のタイミングで攻撃する
    execute if score @s General.Object.Tick matches 3 run function asset:object/1146.rubeus_resonance/tick/attack/do
    execute if score @s General.Object.Tick matches 6 run function asset:object/1146.rubeus_resonance/tick/attack/do
