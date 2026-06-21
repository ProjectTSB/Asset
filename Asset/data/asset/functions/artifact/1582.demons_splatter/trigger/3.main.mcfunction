#> asset:artifact/1582.demons_splatter/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1582.demons_splatter/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
# --- 【効果音（おどろおどろしい呪いの音）】 ---
    playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~ 1.0 0.6
    playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 2.0 0.8
    particle minecraft:dust 0.3 0.0 0.0 2.0 ~ ~1 ~ 0.5 1.0 0.5 0 40 normal
    particle minecraft:large_smoke ~ ~1 ~ 0.4 1.0 0.4 0.02 20 normal
    particle minecraft:block minecraft:redstone_block ~ ~1 ~ 0.5 0.8 0.5 0.1 30 normal
    playsound minecraft:entity.ravager.roar player @a ~ ~ ~ 2.0 0.6
# 効果付与
    data modify storage api: Argument.ID set value 376
    data modify storage api: Argument.Duration set value 600
    #data modify storage api: Argument.Stack set value <スタック数>      # オプション
    #data modify storage api: Argument.DurationOperation set value "replace"   # オプション
    #data modify storage api: Argument.StackOperation set value "replace"      # オプション
    data modify storage api: Argument.FieldOverride.Amount set value 2.5d
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
