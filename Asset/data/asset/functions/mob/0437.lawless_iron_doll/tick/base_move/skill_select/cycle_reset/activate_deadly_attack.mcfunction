#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/cycle_reset/activate_deadly_attack
#
# 必殺技の発動処理
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/cycle_reset/

# 行動中扱いにする
    tag @s add C5.InAction

# ハード以下ではスーパースラムしか使わない。
    execute if predicate api:global_vars/difficulty/max/2_hard run tag @s add C5.Skill.SuperSlam

# Blesslessの場合、必殺技は2種類ある！
    execute if predicate api:global_vars/difficulty/min/3_blessless run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/cycle_reset/deadly_select
