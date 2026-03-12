#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/tick
#
# 眼の前に現れてラッシュパンチ
#
# @within function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# 眼の前に出てくる
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/warp

# ゆっくりと向きを変える
    execute if entity @s[scores={General.Mob.Tick=0..20}] facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-500 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# ラッシュパンチのアニメ再生
    execute if score @s General.Mob.Tick matches 20 as @e[type=item_display,tag=8N.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/attack_oraora_loop/play

# 攻撃判定
    # ハード未満
        execute unless predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 20..30 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/
    # ハード以上
        execute if predicate api:global_vars/difficulty/min/3_blessless if score @s General.Mob.Tick matches 20..40 run function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/

# 待機アニメを再生
    execute if score @s General.Mob.Tick matches 60 as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/animations/neutral_fighting/play

# 元の地点に戻る
    execute if score @s General.Mob.Tick matches 100 at @s run function asset:mob/0311.blazing_inferno/tick/base_move/return_to_rail

# リセット
    execute if score @s General.Mob.Tick matches 140 run function asset:mob/0311.blazing_inferno/tick/base_move/reset
