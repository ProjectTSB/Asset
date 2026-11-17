#> asset:artifact/1690.airbag/trigger/knockback
#
# ノックバック耐性に応じて攻撃者を実行方向へ吹き飛ばす
#
# @within function asset:artifact/1690.airbag/trigger/3.main

#> Private
# @private
    #declare score_holder $A1690.Resistance
    #declare score_holder $A1690.Strength

# 既存のlib:motionでは色々限界があり、ノクバ耐性が強い敵を大きく吹っ飛ばそうとすると、ノクバ耐性が弱い敵への計算がオーバーフローし、上手くいかないため独自の計算を行う。

# 耐性で強度20を減衰させ、Motionの成分が10に達しないよう強度9を上限にする
    execute store result score $A1690.Resistance Temporary run attribute @s generic.knockback_resistance get 10000
    scoreboard players set $A1690.Strength Temporary 10000
    scoreboard players operation $A1690.Strength Temporary -= $A1690.Resistance Temporary
    scoreboard players operation $A1690.Strength Temporary *= $20 Const
    execute if score $A1690.Strength Temporary matches 90001.. run scoreboard players set $A1690.Strength Temporary 90000

# 計算済みの強度で吹き飛ばす
    execute store result storage lib: Argument.VectorMagnitude double 0.0001 run scoreboard players get $A1690.Strength Temporary
    data modify storage lib: Argument.KnockbackResist set value false
    function lib:motion/looking
    data remove storage lib: Argument

# リセット
    scoreboard players reset $A1690.Resistance
    scoreboard players reset $A1690.Strength
