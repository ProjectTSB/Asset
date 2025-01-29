#> asset:artifact/0522.humanism/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/522/click/

#> private
# @private
    #declare tag EI.Target

# 演出
    playsound block.enchantment_table.use player @a ~ ~ ~ 1 0 1
    particle flash ~ ~ ~ 1 1 1 1 100

# HP回復処理
    # 全プレイヤー全回復
        execute as @a run function asset:artifact/0522.humanism/click/heal

# MP回復処理
    execute as @a run function asset:artifact/0522.humanism/click/mp_heal
# ダメージ処理
    # 全プレイヤーの周囲50Mの敵に魔法ダメージ
        data modify storage api: Argument.Damage set value 1900f
        data modify storage api: Argument.AttackType set value "Magic"
        data modify storage api: Argument.ElementType set value "None"
        function api:damage/modifier
        execute at @a run tag @e[tag=Enemy,tag=!Uninterferable,distance=..50] add EI.Target
        execute as @e[tag=EI.Target] run function api:damage/
        function api:damage/reset

# タグリセット
    execute at @a run tag @e[tag=EI.Target,tag=!Uninterferable,distance=..50] remove EI.Target
