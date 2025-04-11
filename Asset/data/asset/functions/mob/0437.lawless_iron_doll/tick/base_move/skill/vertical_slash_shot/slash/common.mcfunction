#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash/common
#
#
#
# @within function
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash/1
#   asset:mob/0437.lawless_iron_doll/tick/base_move/skill/vertical_slash_shot/slash/2

# 眼の前の判定。ショット部分は出始めに判定がないので。
    # 与えるダメージ
        data modify storage api: Argument.Damage set from storage asset:context this.Damage.Slash1
    # 属性1
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性2
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=BoundingFan,distance=..16] run function api:damage/
    # リセット
        function api:damage/reset
        tag @a[tag=BoundingFan,distance=..16] remove BoundingFan

# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 2 0.6
    playsound minecraft:item.axe.scrape hostile @a ~ ~ ~ 1 1.5
