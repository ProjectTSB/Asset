#> asset:artifact/1065.magic_bullet/trigger/loop/bullet/damage/hit_myself
#
# 自分に弾が当たったときの処理
#
# @within function asset:artifact/1065.magic_bullet/trigger/loop/bullet/damage/

# ダメージ
    data modify storage api: Argument.Damage set value 50
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage append value '[{"translate": "%1$sは7つ目の弾丸に撃ち抜かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
