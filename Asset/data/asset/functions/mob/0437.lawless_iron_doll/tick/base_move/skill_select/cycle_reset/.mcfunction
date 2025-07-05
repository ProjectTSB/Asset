#> asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/cycle_reset/
#
#
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/

# タグ削除
    tag @s remove C5.CycleReset
    tag @s add C5.InAction

# 第1形態だとしばらく隙を晒す
    tag @s[scores={C5.Phase=1}] add C5.Skill.Walk

# 第2形態だと必殺技を使う
    execute if entity @s[scores={C5.Phase=2..}] run function asset:mob/0437.lawless_iron_doll/tick/base_move/skill_select/cycle_reset/activate_deadly_attack

# スキルリストを再生
    # ノーマル前半戦
        execute if predicate api:global_vars/difficulty/1_normal if score @s C5.Phase matches 1 run data modify storage asset:context this.Skill.List set value [0,1,2,3]
    # ノーマル後半戦
        execute if predicate api:global_vars/difficulty/1_normal if score @s C5.Phase matches 2 run data modify storage asset:context this.Skill.List set value [0,1,2,3,4]
    # ハード前半戦
        execute if predicate api:global_vars/difficulty/2_hard if score @s C5.Phase matches 1 run data modify storage asset:context this.Skill.List set value [0,1,2,3,4]
    # ハード後半戦
        execute if predicate api:global_vars/difficulty/2_hard if score @s C5.Phase matches 2 run data modify storage asset:context this.Skill.List set value [0,1,2,3,4,5]
    # Blesslessでは常に全部再生だ！
        execute if predicate api:global_vars/difficulty/min/3_blessless run data modify storage asset:context this.Skill.List set value [0,1,2,3,4,5]

# スコアを戻す
    scoreboard players set @s General.Mob.Tick -1
