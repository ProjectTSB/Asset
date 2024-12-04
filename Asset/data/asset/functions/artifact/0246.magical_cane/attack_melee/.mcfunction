#> asset:artifact/0246.magical_cane/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/246/attack_melee/

# 使用時のMPの数値によって演出がかわるよ
    execute store result score $MagicalCane Temporary run function lib:mp/get
    execute if score $MagicalCane Temporary matches 0..49 run function asset:artifact/0246.magical_cane/attack_melee/3.1.weak_hit
    execute if score $MagicalCane Temporary matches 50..249 run function asset:artifact/0246.magical_cane/attack_melee/3.2.strong_hit
    execute if score $MagicalCane Temporary matches 250.. run function asset:artifact/0246.magical_cane/attack_melee/3.3.hyper_hit

# $MagicalCaneに現在のスコアx10の数値を持たせる
    scoreboard players operation $MagicalCane Temporary *= $10 Const

# ぶん殴ったやつにさっきもたせた数値ぶんの魔法無属性のダメージをぶちかます
    execute store result storage lib: Argument.Damage float 1 run scoreboard players get $MagicalCane Temporary
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"

# 補正実行
    function lib:damage/modifier

# ダメージを受けろ！
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/

# リセット
    function lib:damage/reset
    scoreboard players reset $MagicalCane Temporary
