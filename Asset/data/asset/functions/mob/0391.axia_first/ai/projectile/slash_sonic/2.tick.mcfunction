#> asset:mob/0391.axia_first/ai/projectile/slash_sonic/2.tick
#
# 斬撃飛ばし Tick処理
#
# @within function asset:mob/0391.axia_first/tick/

# スコアが1以上なら可視化
    execute if score @s AV.ProjectileTick matches 2.. run data modify entity @s item set value {id:"minecraft:potion",Count:1b,tag:{CustomPotionColor:16711731,CustomModelData:20241}}

# 前方にTP
    execute at @s run tp @s ^ ^ ^1.5

# パーティクル
    particle flame ^ ^ ^-1 0 0 0 0.15 4

# スコアが20以上ならキル
    execute if score @s AV.ProjectileTick matches 25 on passengers run kill @s
    execute if score @s AV.ProjectileTick matches 25 run kill @s

# ヒット判定
    # ダメージ
    # 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 36.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # デスログ
        data modify storage lib: Argument.DeathMessage append value '[{"translate": "%1$sは%2$sが飛ばした斬撃によって真っ二つに切り裂かれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # 補正functionを実行
        function lib:damage/modifier
    # Markerからデータを持ってくる
        execute on passengers run data modify storage asset:temp AV.ID set from entity @s data
    # ダメージを与える
        execute positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!PlayerShouldInvulnerable,dx=2,dy=2,dz=2] at @s run function asset:mob/0391.axia_first/ai/projectile/slash_sonic/4.damage
    # Markerにデータを保存
        execute on passengers run data modify entity @s data set from storage asset:temp AV.ID
    # リセット
        function lib:damage/reset
        data remove storage asset:temp AV.ID

# スコア上昇
    scoreboard players add @s AV.ProjectileTick 1
