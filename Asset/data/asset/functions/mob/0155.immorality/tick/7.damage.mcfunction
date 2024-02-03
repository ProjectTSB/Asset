#> asset:mob/0155.immorality/tick/7.damage
#
# ダメージ等を与える 実行者はプレイヤー
#
# @within function asset:mob/0155.immorality/tick/5.shot

# 演出
    particle minecraft:soul ~ ~ ~ 0 0 0 0.2 10

# ダメージ
    data modify storage lib: Argument.Damage set value 20.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Fire"
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに精神を破壊された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sに魂を撃ち抜かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    execute as @e[type=zombie,tag=this,distance=..25,sort=nearest,limit=1] run function lib:damage/modifier
    execute unless entity @s[gamemode=creative] run function lib:damage/
    function lib:damage/reset

# ウィザーを付与
    effect give @s wither 6 0

# 着弾タグを消す
    tag @s remove LandingTarget