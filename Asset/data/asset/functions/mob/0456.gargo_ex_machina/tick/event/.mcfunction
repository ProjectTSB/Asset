#> asset:mob/0456.gargo_ex_machina/tick/event/
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/

# 起動
    execute if entity @s[tag=CO.Skill.Activate] run function asset:mob/0456.gargo_ex_machina/tick/event/activate/

# 変形
    execute if entity @s[tag=CO.Skill.Transform.Shoot] run function asset:mob/0456.gargo_ex_machina/tick/event/transform_shoot/
    execute if entity @s[tag=CO.Skill.Transform.Sword] run function asset:mob/0456.gargo_ex_machina/tick/event/transform_sword/

# 移動
    execute if entity @s[tag=CO.Skill.Move] run function asset:mob/0456.gargo_ex_machina/tick/event/move/
    execute if entity @s[tag=CO.Skill.Move.End] run function asset:mob/0456.gargo_ex_machina/tick/event/move/event_end

# 剣叩きつけ
    execute if entity @s[tag=CO.Skill.SwordAttack] run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_start
    execute if entity @s[tag=CO.Skill.SwordAttack.Charge] run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_charging
    execute if entity @s[tag=CO.Skill.SwordAttack.Attack] run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack

# 半面焼きビーム
    execute if entity @s[tag=CO.Skill.HalfBeam] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/event_start
    execute if entity @s[tag=CO.Skill.HalfBeam.Charge] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/event_charging
    execute if entity @s[tag=CO.Skill.HalfBeam.Attack] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam/event_attack

# 半面焼きビーム + 回転斬り
    execute if entity @s[tag=CO.Skill.HalfBeamSword] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/event_start
    execute if entity @s[tag=CO.Skill.HalfBeamSword.Charge] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/event_charging
    execute if entity @s[tag=CO.Skill.HalfBeamSword.Attack] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_sword/event_attack

# 半面焼きビーム + 上空射撃
    execute if entity @s[tag=CO.Skill.HalfBeamShot] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/event_start
    execute if entity @s[tag=CO.Skill.HalfBeamShot.Charge] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/event_charging
    execute if entity @s[tag=CO.Skill.HalfBeamShot.Attack] run function asset:mob/0456.gargo_ex_machina/tick/event/half_beam_shot/event_attack

# スーパージャンプ
    execute if entity @s[tag=CO.Skill.SuperJump] run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/event_start
    execute if entity @s[tag=CO.Skill.SuperJump.Attack] run function asset:mob/0456.gargo_ex_machina/tick/event/super_jump/event_attack

# フィールド・モディファイ
    execute if entity @s[tag=CO.Skill.FieldModify] run function asset:mob/0456.gargo_ex_machina/tick/event/field_modify/event_start

# 射撃
    execute if entity @s[tag=CO.Skill.Shot] run function asset:mob/0456.gargo_ex_machina/tick/event/shot/

# 上空射撃
    execute if entity @s[tag=CO.Skill.UpperShot] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/
