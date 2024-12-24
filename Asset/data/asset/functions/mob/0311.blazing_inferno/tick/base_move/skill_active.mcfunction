#> asset:mob/0311.blazing_inferno/tick/base_move/skill_active
#
# 選択したスキルを出す
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/

# ファイアボール
    execute if entity @e[tag=8N.Skill.Fireball] run function asset:mob/0311.blazing_inferno/tick/skill/triple_fireball/tick

# ダッシュパンチ
    execute if entity @e[tag=8N.Skill.DashPunch] run function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/tick

# ファイアボム
    execute if entity @e[tag=8N.Skill.FireBomb] run function asset:mob/0311.blazing_inferno/tick/skill/firebomb/tick

# ラッシュパンチ
    execute if entity @e[tag=8N.Skill.OraOra] run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/tick

# グラウンドスラム
    execute if entity @e[tag=8N.Skill.GroundSlam] run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/

# 召喚&方向転換
    execute if entity @e[tag=8N.Skill.Summon] run function asset:mob/0311.blazing_inferno/tick/skill/summon_minion/
