#> asset:mob/0217.medousa_eye/tick/7.beam_hit
#
# 石化ビームの着弾判定
#
# @within function asset:mob/0217.medousa_eye/tick/5.beam_shoot

# 演出
    particle block stone ~ ~1.2 ~ 0.3 0.4 0.3 0 100 normal @a
    playsound entity.mooshroom.convert hostile @a ~ ~ ~ 0.5 0 0

# ダメージ ハード以下:16 ハード以上:20
    execute if predicate api:global_vars/difficulty/max/normal run data modify storage lib: Argument.Damage set value 16f
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage lib: Argument.Damage set value 20f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sにより石化した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sと目を合わせてしまい、石像となった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正
    execute as @e[type=zombie,tag=this,distance=..20,limit=1] run function lib:damage/modifier
# 実行
    execute if entity @s[tag=!PlayerShouldInvulnerable] run function lib:damage/
# リセット
    function lib:damage/reset

# マナを吸収 イージー:無し ノーマル:30 ハード:60
    execute if predicate api:global_vars/difficulty/normal run scoreboard players set $Fluctuation Lib -30
    execute if predicate api:global_vars/difficulty/hard run scoreboard players set $Fluctuation Lib -60
    execute if predicate api:global_vars/difficulty/min/normal run function lib:mp/fluctuation

# ヒットTag削除
    tag @s remove LandingTarget
