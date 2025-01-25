#> asset:artifact/0057.elemental_sword/attack_melee/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/57/attack_melee/

#> private
# @private
    #declare score_holder $ElementalSwordAttack

# 攻撃の度に属性を変えるヤツ
    # 使用回数を取る
        function api:data_get/selected_item
        execute store result score $ElementalSwordAttack Temporary run data get storage api: SelectedItem.tag.TSB.RemainingCount
    # 使用回数を3で剰余算
        scoreboard players operation $ElementalSwordAttack Temporary %= $3 Const

# 属性それぞれの演出
    execute if score $ElementalSwordAttack Temporary matches 0 at @e[type=#lib:living,tag=Victim,distance=..10] run function asset:artifact/0057.elemental_sword/attack_melee/vfx/fire
    execute if score $ElementalSwordAttack Temporary matches 1 at @e[type=#lib:living,tag=Victim,distance=..10] run function asset:artifact/0057.elemental_sword/attack_melee/vfx/water
    execute if score $ElementalSwordAttack Temporary matches 2 at @e[type=#lib:living,tag=Victim,distance=..10] run function asset:artifact/0057.elemental_sword/attack_melee/vfx/thunder

# ダメージ
    data modify storage api: Argument.Damage set value 95.0f
    data modify storage api: Argument.AttackType set value "Physical"
    execute if score $ElementalSwordAttack Temporary matches 0 run data modify storage api: Argument.ElementType set value "Fire"
    execute if score $ElementalSwordAttack Temporary matches 1 run data modify storage api: Argument.ElementType set value "Water"
    execute if score $ElementalSwordAttack Temporary matches 2 run data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# リセット
    scoreboard players reset $ElementalSwordAttack Temporary
