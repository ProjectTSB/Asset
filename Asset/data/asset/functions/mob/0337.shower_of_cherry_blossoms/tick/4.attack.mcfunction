#> asset:mob/0337.shower_of_cherry_blossoms/tick/4.attack
#
# 桜吹雪の攻撃
#
# @within function asset:mob/0337.shower_of_cherry_blossoms/tick/2.tick

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 3.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって桜の木の下に埋められた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは桜の木を切り倒した罪を背負いながら、%2$sによって倒された","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    execute as @e[tag=9D.This,distance=..16] run function lib:damage/modifier
# ダメージ対象
    function lib:damage/

# タグ外し
    tag @s remove 9D.Landing