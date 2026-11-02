#> asset:artifact/1648.cursed_power_stone/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1648.cursed_power_stone/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

#> private
# @private
    #declare score_holder $A1648.MP
    #declare tag A1648.HasDebuff

# MPが0以上ならEffect427、そうでないならEffect428を付与
    #Effect428が付与されていたらEffect427は付与しない
    data modify storage api: Argument.ID set value 428
    function api:entity/mob/effect/get/from_id
    execute if data storage api: Return.Effect run tag @s add A1648.HasDebuff

    function api:mp/get_current
    execute store result score $A1648.MP Temporary run data get storage api: Return.CurrentMP
    data modify storage api: Argument.ID set value 427
    execute if score $A1648.MP Temporary matches 0 run data modify storage api: Argument.ID set value 428

    # modifierを設定
        data modify storage api: Argument.FieldOverride.Buff.Attack set value 0.1d
        data modify storage api: Argument.FieldOverride.Buff.MPHeal set value 0.2d

        data modify storage api: Argument.FieldOverride.Debuff.Defense set value -0.2d
        data modify storage api: Argument.FieldOverride.Debuff.MPHeal set value -0.2d

    execute if entity @s[tag=!A1648.HasDebuff] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 装備中タグ
    tag @s add A1648.Equipping

# 演出
    playsound block.trial_spawner.spawn_mob player @a ~ ~ ~ 1.0 0.7
    playsound ogg:ambient.nether.crimson_forest.shine3 player @a ~ ~ ~ 2.0 2.0
    particle dust 0.7 0.2 0.7 0.7 ~ ~1 ~ 0.2 0.5 0.2 0 12
    particle dust 0.8 0.4 0.8 0.7 ~ ~1 ~ 0.2 0.5 0.2 0 12

# リセット
    scoreboard players reset $A1648.MP Temporary
    tag @s remove A1648.HasDebuff
