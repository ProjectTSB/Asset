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
    execute as @a[tag=!this] run function asset:artifact/0522.humanism/click/mp_heal
# ダメージ処理
    # 全プレイヤーの周囲50Mの敵に魔法・水属性ダメージ
        data modify storage lib: Argument.Damage set value 1700f
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
        function lib:damage/modifier
        execute at @a run tag @e[tag=Enemy,tag=!Uninterferable,distance=..50] add EI.Target
        execute as @e[tag=EI.Target] run function lib:damage/
        function lib:damage/reset

# タグリセット
    execute at @a run tag @e[tag=EI.Target,tag=!Uninterferable,distance=..50] remove EI.Target
