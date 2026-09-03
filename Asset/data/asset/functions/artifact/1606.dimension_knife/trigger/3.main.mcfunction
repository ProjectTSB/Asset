#> asset:artifact/1606.dimension_knife/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1606.dimension_knife/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出用Object

# 斬撃
    data modify storage api: Argument.ID set value 2001
    data modify storage api: Argument.FieldOverride set value {Color:13066983,Frames:[20335,20336,20337],Scale:[4f,4f,0.1f],Transformation:{left_rotation:[0.561f,-0.43f,0.43f,0.561f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
    execute anchored eyes positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ run function api:object/summon


# ダメージ
    execute store result storage api: Argument.Damage float 1 run random value 100..200
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living_without_player,tag=Victim,tag=!Uninterferable,distance=..10] run function api:damage/
    function api:damage/reset
