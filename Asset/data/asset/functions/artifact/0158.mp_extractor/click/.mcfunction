#> asset:artifact/0158.mp_extractor/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/158/click/

    # あげる♡
    data modify storage api: Argument.ID set value 159
    function api:artifact/give/from_id
    # 演出
    execute anchored eyes run particle falling_obsidian_tear ^ ^ ^ 0.5 0.5 0.5 0 50 force @s
    clear @s glass_bottle 1