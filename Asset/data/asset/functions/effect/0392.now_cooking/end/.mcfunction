#> asset:effect/0392.now_cooking/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0392.now_cooking/_/end

# スタック数×10発の弾丸召喚 = Effect 393を効果時間(弾数×2 = スタック数×20)tickで付与
    data modify storage api: Argument.ID set value 393
    execute store result storage api: Argument.Duration int 20 run data get storage asset:context Stack
    #攻撃情報も引き継ぐ
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.FieldOverride.AttackType set from storage asset:context this.AttackType
    data modify storage api: Argument.FieldOverride.ElementType set from storage asset:context this.ElementType

    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
