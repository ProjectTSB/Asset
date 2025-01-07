#> asset:mob/1004.tultaria/tick/base_move/element_select/
#
# 属性チェンジ
#
# @within function asset:mob/1004.tultaria/tick/base_move/

# リセット！
    tag @s remove RW.Mode.Fire
    tag @s remove RW.Mode.Water
    tag @s remove RW.Mode.Thunder
    tag @s remove RW.Mode.Light

# 剣を破壊
    execute as @e[type=item_display,scores={ObjectID=2043},distance=..64] at @s run function asset:mob/1004.tultaria/tick/skill/water/sword_rain/sword/break

# 属性をランダムに選択
    # 要素がない場合は光属性モードに移行
        execute if data storage asset:context this.Element{List:[]} run data modify storage asset:context this.Element.List set value [Light]
    # ストレージの要素数を取得
        execute store result storage asset:context this.Element.Count int 1 run data get storage asset:context this.Element.List
    # 取得した要素数を使ってランダムに属性を選ぶ
        function asset:mob/1004.tultaria/tick/base_move/element_select/roll.m with storage asset:context this.Element

# 技の数は全属性で一定なので！
    data modify storage asset:context this.Skill.List set value [0,1,2]

# リセット
    tag @s remove RW.CanElementChange
