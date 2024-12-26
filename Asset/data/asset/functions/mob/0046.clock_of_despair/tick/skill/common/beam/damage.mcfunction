#> asset:mob/0046.clock_of_despair/tick/skill/common/beam/damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/beam/loop

# クールダウン設定
    scoreboard players set @s 1A.Cooldown 3
# ダメージ
    data modify storage api: Argument.Damage set value 20
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの光線により身を焼かれて息絶えた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"api:","interpret":true}]}]'
    execute as @e[type=zombie,scores={MobID=46},distance=..100,limit=1] run function api:damage/modifier
    execute as @a[tag=LandingTarget,tag=!PlayerShouldInvulnerable] run function api:damage/
# リセット
    function api:damage/reset
