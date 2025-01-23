#> asset:mob/0232.honey_leader/tick/skill/beam/
#
# ビームのメイン処理
#
# @within function asset:mob/0232.honey_leader/tick/

# ビームの予備動作演出
    execute if entity @s[tag=!6G.Beam,scores={General.Mob.Tick=0}] anchored eyes positioned ^ ^ ^0.3 run function asset:mob/0232.honey_leader/tick/skill/beam/ready

# ビーム発射とリセット
    execute if entity @s[tag=!6G.Beam,scores={General.Mob.Tick=10..}] run function asset:mob/0232.honey_leader/tick/skill/beam/shoot_and_reset
