#> asset:mob/0123.lexiel_v3/tick/03.skill_sword3/tackle
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/main


# 周囲にいるプレイヤーにタグをつける
    execute positioned ^ ^ ^1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 3F.SkillSwordDamageThis
    execute positioned ^ ^ ^2 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 3F.SkillSwordDamageThis
# 引数の設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 28.0f
    # 第一属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# 前方にいたプレイヤーにダメージ
    execute as @a[tag=3F.SkillSwordDamageThis] run function api:damage/

# もし攻撃当たってたら終わる
    execute if entity @a[tag=3F.SkillSwordDamageThis,distance=..30] if score @s General.Mob.Tick matches ..1000 run scoreboard players set @s General.Mob.Tick 26

# ハード限定、特殊行動中にもし攻撃当たってたらそのままスキル2
    execute if entity @a[tag=3F.SkillSwordDamageThis,distance=..30] if score @s General.Mob.Tick matches 1000.. at @s run function asset:mob/0123.lexiel_v3/tick/03.skill_sword3/skill_move

# リセット
    function api:damage/reset
    tag @a[tag=3F.SkillSwordDamageThis] remove 3F.SkillSwordDamageThis
