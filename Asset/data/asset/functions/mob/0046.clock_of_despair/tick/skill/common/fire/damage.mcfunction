#> asset:mob/0046.clock_of_despair/tick/skill/common/fire/damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/**

# 演出
    function asset:mob/0046.clock_of_despair/tick/skill/common/fire/blast_vfx

# ダメージ設定
    data modify storage api: Argument.Damage set value 70
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの爆発により消し炭となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] at @s run function api:damage/
    function api:damage/reset

# キル
    kill @e[type=marker,tag=1A.SkillFireMaker,distance=..0.01,sort=nearest,limit=1]
