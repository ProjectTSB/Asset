#> asset:mob/0456.gargo_ex_machina/tick/event/
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/

# 待機検出
    execute as @e[type=item_display,tag=CO.ModelRoot,distance=..30] at @s run function asset:mob/0456.gargo_ex_machina/tick/event/idle/check

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
    execute if entity @s[tag=CO.Skill.SwordAttack.Double] run function asset:mob/0456.gargo_ex_machina/tick/event/sword_attack/event_attack_double

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

# ロケットパンチ
    execute if entity @s[tag=CO.Skill.RocketPunch] run function asset:mob/0456.gargo_ex_machina/tick/event/rocket_punch/

# 射撃
    execute if entity @s[tag=CO.Skill.Shot] run function asset:mob/0456.gargo_ex_machina/tick/event/shot/

# 上空射撃
    execute if entity @s[tag=CO.Skill.UpperShot] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/
    # 攻撃判定用
        execute if entity @s[tag=CO.UpperShot.Asyuc] run function asset:mob/0456.gargo_ex_machina/tick/event/upper_shot/async_attack

# ブルートフォースアタック
    execute if entity @s[tag=CO.Skill.BluteForce] run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/
    execute if entity @s[tag=CO.Skill.BluteForce.First] run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/event_first
    # お披露目パターン
        execute if entity @s[tag=CO.Skill.BluteForce.Async,tag=CO.Skill.BluteForce.Pt.Tutorial] at @e[type=marker,tag=CO.CenterPosition,distance=..80] run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_tutorial
    # 回転パターン
        execute if entity @s[tag=CO.Skill.BluteForce.Async,tag=CO.Skill.BluteForce.Pt.Spin] at @e[type=marker,tag=CO.CenterPosition,distance=..80] run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_spin
        execute if entity @s[tag=CO.Skill.BluteForce.Async,tag=CO.Skill.BluteForce.Pt.SpinInv] at @e[type=marker,tag=CO.CenterPosition,distance=..80] run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_spin_inv
    # エクサパターン
        execute if entity @s[tag=CO.Skill.BluteForce.Async,tag=CO.Skill.BluteForce.Pt.Exa] at @e[type=marker,tag=CO.CenterPosition,distance=..80] run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_exa
        execute if entity @s[tag=CO.Skill.BluteForce.Async,tag=CO.Skill.BluteForce.Pt.ExaInv] at @e[type=marker,tag=CO.CenterPosition,distance=..80] run function asset:mob/0456.gargo_ex_machina/tick/event/blute_force_attack/async_pattern_exa_inv
