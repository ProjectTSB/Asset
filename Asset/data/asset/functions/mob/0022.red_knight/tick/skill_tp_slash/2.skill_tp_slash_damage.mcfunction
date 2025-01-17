#> asset:mob/0022.red_knight/tick/skill_tp_slash/2.skill_tp_slash_damage
#
#
#
# @within function asset:mob/0022.red_knight/tick/skill_tp_slash/1.skill_tp_slash

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 40.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..1] at @s run function api:damage/
# リセット
    function api:damage/reset

# 移動速度を落とす
    effect give @a[tag=!PlayerShouldInvulnerable,distance=..1] slowness 1 9 true
# 演出
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..1] at @a[tag=!PlayerShouldInvulnerable,distance=..1] run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2

# もし不発だったらスコアを勧めちゃって終わり
    execute unless entity @a[tag=!PlayerShouldInvulnerable,distance=..1] run scoreboard players set @s M.Tick 45
