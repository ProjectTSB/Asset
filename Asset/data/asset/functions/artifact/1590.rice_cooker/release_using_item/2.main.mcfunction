#> asset:artifact/1590.rice_cooker/release_using_item/2.main
#
#
#
# @within function asset:artifact/1590.rice_cooker/release_using_item/1.trigger

# スタック数×10発の弾丸召喚 = Effect393を効果時間(弾数×2 = Effect392のスタック数×20)tickで付与
    #チャージをそもそもしていない場合はキャンセル
    data modify storage api: Argument.ID set value 392
    function api:entity/mob/effect/get/from_id
    execute unless data storage api: Return.Effect run return fail

    data modify storage api: Argument.ID set value 393
    data modify storage api: Argument.FieldOverride.Damage set value 5.0d
    data modify storage api: Argument.FieldOverride.AttackType set value "Physical"
    data modify storage api: Argument.FieldOverride.ElementType set value "Water"
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set value 1
    execute store result storage api: Argument.Duration int 20 run data get storage api: Return.Effect.Stack
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
