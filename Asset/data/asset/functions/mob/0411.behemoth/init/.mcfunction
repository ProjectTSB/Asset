#> asset:mob/0411.behemoth/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/411/init

# 継承元の処理実行
    function asset:mob/super.init

# 独自init処理
    # 移動
        tp @s ^ ^2.5 ^ ~ 0
    # NBT設定
    # Aj関連初期化
        function asset:mob/0411.behemoth/init/animated_java
    # スコア初期化
        # scoreboard players set @s BE.Phase 0
        # scoreboard players set @s BE.ActCount 0
        # scoreboard players set @s BE.Idle.Count 0
