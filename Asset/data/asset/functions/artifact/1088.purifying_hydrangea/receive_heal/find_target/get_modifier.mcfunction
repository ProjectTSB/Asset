#> asset:artifact/1088.purifying_hydrangea/receive_heal/find_target/get_modifier
#
# 実行者の水攻撃補正を返す
#
# @within function asset:artifact/1088.purifying_hydrangea/receive_heal/find_target/

# 水攻撃補正を取得
    function api:modifier/attack/water/get

# 返り値として返す
    return run data get storage api: Return.Attack.Water 10
