#> asset:mob/0341.louvert/tick/general/13.kill_spectator
#
# スペクテイターを確実に殺す
#
# @within function asset:mob/0341.louvert/tick/2.tick

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 9999
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 火属性
        data modify storage lib: Argument.ElementType set value "Fire"
    # 悪いがお前を消し飛ばす
        data modify storage lib: Argument.FixedDamage set value true
    # 死亡ログ
        data modify storage lib: Argument.DeathMessage set value '[{"translate": "%1$sは霊界に逃げ込んだが、%2$sによって魂ごと消し飛ばされてしまった","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
    # ダメージ
        execute as @e[tag=this,distance=..100] run function lib:damage/modifier
        function lib:damage/
# リセット
    function lib:damage/reset