#> asset:mob/0410.heiloang/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/410/init

# 継承元の処理実行
    function asset:mob/super.init

# 独自init処理
    # 中心点設置
        summon marker ~ ~ ~ {Tags:["BE.CenterPosition"]}
        execute as @e[type=marker,tag=BE.CenterPosition] at @s run tp @s ~ ~ ~ 0 0
    # 移動
        execute at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
    # NBT設定
    # Aj関連初期化
        function asset:mob/0410.heiloang/tick/animated_java/init
