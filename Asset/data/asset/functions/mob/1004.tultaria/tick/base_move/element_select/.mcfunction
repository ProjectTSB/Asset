#> asset:mob/1004.tultaria/tick/base_move/element_select/
#
# 属性チェンジ
#
# @within function asset:mob/1004.tultaria/tick/base_move/

# アニメストップ
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/neutral_air/stop
# アニメ再生
    execute as @e[type=item_display,tag=RW.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:tultaria/animations/attack_magic_2_left/play

# 属性をランダムに選択
    # 要素がない場合は再付与
        execute if data storage asset:context this.Element{List:[]} run data modify storage asset:context this.Element.List set value [Fire,Water,Thunder]
    # ストレージの要素数を取得
        execute store result storage asset:context this.Element.Count int 1 run data get storage asset:context this.Element.List
    # 取得した要素数を使ってランダムに属性を選ぶ
        execute unless data storage asset:context this.Element{Count:1} run function asset:mob/1004.tultaria/tick/base_move/element_select/roll.m with storage asset:context this.Element
    # 要素数１個しかないとき
        execute if data storage asset:context this.Element{Count:1} run function asset:mob/1004.tultaria/tick/base_move/element_select/only_one_element with storage asset:context this.Element

# 技の数は全属性で一定なので！
    data modify storage asset:context this.Skill.List set value [0,1,2]

# リセット
    tag @s remove RW.CanElementChange
