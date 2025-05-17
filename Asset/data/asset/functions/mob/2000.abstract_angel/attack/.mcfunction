#> asset:mob/2000.abstract_angel/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/2000/attack

# バニラの攻撃なら return
    execute if data storage asset:context Attack{IsVanilla:true} run return 0

# Blessless なら被ダメージ時にプレイヤーに被ダメージ上昇を付与する
    execute if predicate api:global_vars/difficulty/min/3_blessless as @a[tag=Victim] run function asset:mob/2000.abstract_angel/attack/add_damage_increase_debuff/
