# Artifact

artifact は `Asset/data/asset/functions/artifact/<4桁ID>.<name>/` に置く。入手用 item/名前/lore/slot 等は `give/2.give.mcfunction` に書く。`register.mcfunction` がある場合は rarity pool 等の登録用途であり、0057 でも RarityRegistry のみを扱い、0001 には存在しない。

Wiki の作成意図では `Trigger` は Lore 表示用であり、実際の発火経路は function tag に登録した `1.trigger` が決める。`ConsumeItem` も Lore 表示用で、在庫確認・消費は API を使う個別処理が必要である。表示定義だけを追加して実処理ができたと判断しない。

自動使用の trigger は `storage asset:context id{auto:<ID>}` を検査し、共通の `artifact/common/check_condition/auto` と `artifact/common/use/auto` に接続する実装が多い。レビューではこの接続、offhand の検知、selector の `limit=1`、表示説明と実計算値の一致が繰り返し確認されている（PR #7, #9, #22, #49）。ただしレビュー suggestion は採用結果をコードで確認してから規約化する。

`1.trigger` は ID 判定と次段への呼び出しだけにする（ユーザー方針）。固有条件は `2.check_condition`、効果は `3.main` 以降へ置く。既存例は下記の0057を参照する。

共通 check は信仰、各 cooldown、MP 等を判定し、成功を `CanUsed` tag で表す。追加条件は既存の成功を無条件に作り直さず、失敗時にその tag を外す。共通 use は MP・使用回数の消費、cooldown 開始、LatestUseTick と item NBT の更新に加え、後続 Damage API 用の `api:PersistentArgument.AdditionalMPHeal` を設定する。この値は通常の `Argument` cleanup と寿命が異なる。副 trigger で common use を省略する場合も「すでに別経路で消費済み」等の設計理由と、必要な persistent side effect の有無を確認する。

攻撃処理では `asset:context Attack` の `IsVanilla` 等を入力条件にし、`api: Argument.Damage`, `AttackType`, `ElementType`, `DeathMessage` を設定して API を呼ぶ。Difficulty 等を `api: Return` から読み、必要なら Temporary score を介して丸め・倍率計算する。使用回数や cooldown は対象 artifact と共通処理の既存例に合わせる。

攻撃対象のEnemy条件は神器固有の仕様も確認する。ユーザーの現時点の方針では、新規の通常攻撃対象は `tag=Enemy` を基本候補にしてよい。既存神器には異なる選択があるため、Enemyがないことだけで一律に誤りと指摘せず、友好Mobも対象とする仕様かを照合する。

移動停止・位置や角度の計算・粒子や表示entityを扱う場合は、[移動・幾何・描画のイディオム](runtime-and-tools.md) も確認する。神器のtrigger内に直接書かれるものと、生成したObjectへ委譲されるものの両方がある。

DeathMessageの書式例は [Thunder の命中処理](../../Asset/data/asset/functions/object/2057.thunder/tick/thunder.mcfunction)。`translate` と `with` で被害者・攻撃者を差し込むJSON文字列を候補として渡し、名前の解決は死亡時に本体へ委ねる。`@s` や `Return.AttackerName` を攻撃時点で展開しない理由と引数の契約は、依存先TheSkyBlessingの `docs/knowledge/api-and-storage.md` を参照する。

`Equipment.Effects` は EffectAsset の付与・stack に接続し、`Equipment.Modifiers` は装備単位で直接集計される。4部位へ同じ modifier を書けば4回分になる一方、同じ Effect ID を使うセットは Effect の `MaxStack` と given/re-given/remove の遷移で成立・解除を管理する。Artifact 自体に Mob/Object 型の `extends` や任意 method dispatch があるという意味ではない。

`scripts/update-artifact-register.scala.sc` は各 artifact の register を解析して rarity registry 等を更新し、`check-artifact-level.sc` は spreadsheet 入力と register の rarity を照合する。register の有無や生成先を確認してから変更する。

新規追加時は同種の `give/` と `trigger/`、`tags/functions/artifact/give.json` を入口から追い、ID・タグ・説明・register を置換する。`1→2→3` の順序、成功時の CanUsed/cooldown、失敗時のタグ・context の後始末を既存例と照合する。説明の数値は score の境界と tick の実計算に合わせる。

手順の実例は [0057 elemental sword](../../Asset/data/asset/functions/artifact/0057.elemental_sword) を辿る。入口の `tags/functions/artifact/give.json` が `give/1.trigger` を列挙し、そこから `give/2.give` が呼ばれる。入手用定義は `give/2.give`、rarity poolは存在する場合だけ `register.mcfunction` を更新する。自動発動は `storage asset:context id{auto:ID}` を照合して `2.check_condition`、`3.main` へ進む。手動実行ではこのcontextが無いため、対応するイベント入力を用意して検証する。条件失敗時の `CanUsed`、cooldown、ローカルなTemporaryの残留が典型的な不具合である。4桁表記はこのrepoのディレクトリ慣行であり、storageへ書くID値はゼロ埋めしない整数である。

神器tickの対象状態と公開タグは、依存先TheSkyBlessingの `docs/knowledge/runtime-and-assets.md`「神器tickと死亡・スペクテイター」を参照する。装備回収と発動経路の停止を混同せず、仕様で必要な条件を `2.check_condition` に置く。

## 属性表示と実際の攻撃、クールダウンの指定を揃える

神器の `AttackInfo.AttackType`／`ElementType` はLore用の配列で、表示する属性を列挙する。実際の攻撃はDamage APIへ単一の属性を渡す。値の一覧と計算規則は、依存先TheSkyBlessingの `docs/knowledge/api-and-storage.md`「攻撃の属性と能力値のAttributesを区別する」を参照する。

[Elemental Swordのgive](../../Asset/data/asset/functions/artifact/0057.elemental_sword/give/2.give.mcfunction) は火・水・雷を列挙し、[発動処理](../../Asset/data/asset/functions/artifact/0057.elemental_sword/trigger/3.main.mcfunction) は使用回数から一つを選んで `Argument.ElementType` へ渡す。複数の属性がLoreにあることは、一回のdamageにすべての属性が適用される意味ではない。属性を変える実装では、Lore・API引数・演出の三箇所が同じ仕様を表すか確認する。

クールダウンは攻撃属性とは分け、どの神器・プレイヤーと待ち時間を共有したいかで決める。アイテム個体のLCD、プレイヤーごとの種別TCD、全プレイヤーの該当神器で共有するGCDを使い分ける。GCDの定義名は `SpecialCooldown` である。TCDではType・Durationをgiveに定義し、発動時の共通checkと共通useへ接続する。[Call Elemental Familiar](../../Asset/data/asset/functions/artifact/0295.call_elemental_familiar/give/2.give.mcfunction) は主種別に `summon` の600tick、第二種別に `longRange` の80tickを指定する実例である。二系統を使う設計の例であり、数値は他の神器の既定値ではない。共有範囲・更新・減算の契約は、依存先TheSkyBlessingの `docs/knowledge/runtime-and-assets.md`「LCD・TCD・GCDは共有範囲と時間の進め方で選ぶ」にある。

種別を追加する場合は本体の判定・表示に加え、Assetの [表出力スクリプト](../../scripts/update-artifact-spreadsheet.scala.sc) のCooldownType解釈も確認する。既存の四種を使う神器の追加と、新種別の導入を同じ作業として扱わない。

## 範囲攻撃のダメージ計算と一撃の区切り

同じMobの複数のExtendedCollisionを拾う攻撃で、一撃につき一回だけダメージを適用したい場合は、対象処理全体を `api:damage/single_damage_session/open`／`close` で囲む。命中箇所によって威力が変わる場合は、優先する判定を先に処理する。[stone_cutter_chainsawの命中処理](../../Asset/data/asset/functions/artifact/0471.stone_cutter_chainsaw/trigger/3.main.mcfunction) はクリティカル判定と通常判定を一つのセッションに含め、クリティカル側を先に適用する。多重命中を想定して威力を調整する攻撃へ導入すると命中回数が変わるため、[追加当たり判定へのダメージ調整](runtime-and-tools.md) と区別する。

範囲攻撃で対象ごとに乱数を抽選したい場合は、各対象の処理で補正前のダメージと引数を設定し、攻撃元としてmodifier、対象としてdamageを呼び、resetする。[blade_of_dawnのdamage](../../Asset/data/asset/functions/artifact/1258.blade_of_dawn/trigger/damage.mcfunction) が実例である。一撃全体をセッションで囲めば、対象ごとのresetを挟んでも拡張当たり判定の重複防止を維持できる。通常entityへの反復呼び出しを制限する用途には使わない。適用範囲と後始末は、本体の `TheSkyBlessing/data/api/functions/damage/single_damage_session/` と `damage/core/reset.mcfunction` を確認する。

## 使用の継続・解除と、発動時の情報の保持

スニークの一定時間到達で一度発動させる場合と、その時間以降ずっと発動させる場合は、`sneak/<N>s` と `sneak/keep/<N>s` の配送を使い分ける。slotごとの時間とcontextの絞り込みは、依存先TheSkyBlessingの `docs/knowledge/runtime-and-assets.md`「遅延・再入・破棄をイベント境界から読む」を参照する。

[Sacred Hardener](../../Asset/data/asset/functions/artifact/1220.sacred_hardener/trigger/3.main.mcfunction) は、防具セットを扱う条件のとき共通useを合計4回呼び、4回分の消費を処理する。同じ関数を連続して呼んでいても重複とは限らない。なお、この神器の `click.carrot_on_a_stick` 登録は旧実装の残りである（ユーザー確認済み）。`using_item` と併記されていることを、新規実装で両方へ登録する理由にしない。共通useの一回分の副作用と、その神器が必要とする使用回数を合わせて判断する。

### 再付与を継続入力として使う

押し続ける間はチャージし、入力が途切れたら発動する実装では、短命Effectの再付与を継続通知、失効を終了通知として使える。開始時の消費・cooldownと継続入力の処理は分ける。

[Deep Azure の条件判定](../../Asset/data/asset/functions/artifact/1256.deep_azure/trigger/2.check_condition.mcfunction) は、チャージEffect 329があれば共通checkより先に [charge](../../Asset/data/asset/functions/artifact/1256.deep_azure/trigger/charge.mcfunction) へ進む。初回のcommon useが始めるcooldownを、チャージ継続のたびに判定し直さないためである。Duration/MaxDurationが1のEffectをusing_itemで再付与し、再付与が途切れた後の [end](../../Asset/data/asset/functions/effect/0329.charge_of_deep_azure/end/.mcfunction) を攻撃Effectへの移行に使う。[re-given](../../Asset/data/asset/functions/effect/0329.charge_of_deep_azure/re-given/.mcfunction) は `PreviousField` からダメージと蓄積値を引き継ぐ。開始・継続・終了を別の処理として読み、継続側に初回と同じMP消費やcooldown判定を一律追加しない。入力から終了イベントまでの実際の時刻は本体のEffect処理順にも依存する。

### 共有効果は最後の所持がなくなったときに解除する

複数の装備が一つの効果を共有する場合、解除イベント1回を「効果の所有者がいなくなった」と扱わない。変更後の装備集合で寄与が残っているかを判定する。

[朧月の花の装備解除](../../Asset/data/asset/functions/artifact/0740.flower_of_hazy_moon/dis_equip/main.mcfunction) は `New.Items.hotbar[{tag:{TSB:{ID:740}}}]` の一致数を取り、0になったときだけ共有するmodifierを外す。同じ神器を複数slotに持つ場合、1個を外しただけで効果全体を解除しないためである。dis_equip中の `Items` と `New.Items` の違いは、依存先TheSkyBlessingの `architecture.md`「装備は前回との差から有効状態を組み直す」を参照する。

### 遅延する攻撃へ発動時の値を渡す

遅れて実行する処理には、発動時の値を固定するのか、命中時に取り直すのかを決めて渡す。共有ArgumentやPersistentArgumentの名称から寿命を仮定しない。遅れて命中する攻撃では、発動時の追加MP回復量も保存する。[Aurora Scythe の発動](../../Asset/data/asset/functions/artifact/1227.aurora_scythe/trigger/3.main.mcfunction) は `PersistentArgument.AdditionalMPHeal` を `FieldOverride.AdditionalMPHeal` へ渡し、[チャージEffectの終了](../../Asset/data/asset/functions/effect/0315.charge_of_aurora_scythe/end/.mcfunction) から次の攻撃へ引き継ぐ。[Thunder Stiletto の命中](../../Asset/data/asset/functions/object/1130.thunder_stiletto/hit_entity/.mcfunction) はFieldの値を `Argument.AdditionalMPHeal` へ戻す実例である。Persistent値の有効期間とDamage APIの既定値は、依存先TheSkyBlessingの `api-and-storage.md` の契約に従う。

### 固定ダメージと独立した防壁を区別する

固定ダメージで省略される補正と、別の仕組みで吸収するバリアは分けて扱う。意図的にバリアを通さないコストを実装する場合は、ダメージのフラグだけでなくEffectの解除・反映・復帰まで確認する。

[Scale of Arbit](../../Asset/data/asset/functions/artifact/1251.scale_of_arbit/trigger/3.main.mcfunction) は、バリアEffect318を解除してから自身へ固定ダメージを与え、1tick後にバリアを付け直す。固定ダメージをバリアで軽減させないための順序である（ユーザー確認済み）。解除と再付与を同じ時点へまとめたり、FixedDamageならバリアも無視できると解釈したりしない。実際の反映時点は本体のDamage/Effect処理と併せて確認する。

### Vanilla操作による性能変更を制限する

[簡易革防具](../../Asset/data/asset/functions/artifact/0090.leather_armor_set/trigger/3.main.mcfunction) 等の `RepairCost:9999` は、金床でエンチャント本を合成し、その防具へエンチャントを付けることを防ぐための指定である（ユーザー確認済み）。改名を含むすべての金床操作を禁止するという説明へ広げない。

[Aurora Scythe](../../Asset/data/asset/functions/artifact/1227.aurora_scythe/trigger/3.main.mcfunction) のダメージ1.5倍はMP30%以下が現行仕様で、40%以下とするコメントが古い（ユーザー確認済み）。閾値のレビューでコメント側へ実装を揃えない。

## 装備と効果の寿命を分ける

### 装備解除後も続く待機状態を持つ

再使用までの待ち時間が装備解除後も続く仕様では、装備中の効果と再付与を禁止する状態を別々に持つ。装備解除で前者を消しても後者を残せるよう、生成・解除する主体と寿命を分ける。装備中のtickだけで時間を減らすと、外している間に進むという仕様を満たせない。

Effectは、付与先に状態を持たせ、本体のEffect処理と表示・解除規則を利用したい場合の選択肢になる。[双律の印章の条件判定](../../Asset/data/asset/functions/artifact/1412.seal_of_dual_rhythm/trigger/2.check_condition.mcfunction) は効果と待機用Effectの存在を確認し、[装備解除](../../Asset/data/asset/functions/artifact/1412.seal_of_dual_rhythm/trigger/dis_equip/main.mcfunction) は効果だけを削除する。[待機用Effectの定義](../../Asset/data/asset/functions/effect/0401.dual_rhythm_cooldown/register.mcfunction) は表示・死亡時の扱いを持ち、付与時に指定された時間を装備と独立して管理する。

選ぶ前に、待機状態を誰が持つか、死亡・解除スキルで消えてよいか、何の時間を数えるかを決める。この方式は本体が対象を処理するtickを数えるもので、未接続・サーバー停止中も実時間で進むタイマーではない。装備している間だけ進めたい仕様にもそのまま転用しない。表示、悪い効果の分類、解除レベルは待機状態ごとの設計値である。

### 効果の付与と、その効果の振る舞いを分担する

効果を神器以外から付与しても同じ振る舞いにしたい場合、神器は付与条件と装備解除時の削除要求を担当し、Effectは自身の接触判定・補正・終了を担当する。[軽減Effectのtick](../../Asset/data/asset/functions/effect/0399.dual_rhythm_guard/tick/.mcfunction) と [移譲処理](../../Asset/data/asset/functions/effect/0399.dual_rhythm_guard/tick/transfer.mcfunction) がその実例である。神器からEffectの内部タグ・Field・modifierを直接操作せず、公開APIと [カテゴリ間の契約](object-model.md#カテゴリごとの違い) を使う。

一方、装備slotや神器固有の使用条件が必要な処理までEffectへ移すと、その入力を失う。共通化の境界はファイル数ではなく、どこから付与されても成立する効果か、装備・操作に依存する条件かで決める。

### 付与元と付与先の終了条件を別々に決める

他人へ効果を付与する神器では、付与元の装備解除・死亡と、付与先の死亡を別々に仕様化する。付与元への連動が必要か、どの終了を移譲の契機とするかの判断は [Effectの寿命設計](effect.md#付与元と付与先の終了条件を別々に決める) に従う。

### 付与要求と実際の発効を区別する

常時効果を補充する処理では、「存在しないときに付与する」のか、「発効済みの効果へ反応する」のかを分ける。前者は付与待ち・削除待ちも含む存在確認で重複要求を防ぎ、後者はEffectのイベントとその入力条件に従って実行する。神器がEffectの内部状態を読み解いて独自の発動条件を増やす方式へ一律に置き換えない。

双律の印章は神器側で存在だけを確認し、接触処理をEffectのtickへ置く例である。given/re-givenと通常tickの配送、削除予約、再付与の反映時点は本体の契約に依存する。実行順を確認せず「giveしたコマンドの直後から有効」「両者へ同じtickに反映する」と仮定しない。[再付与と自己終了の読み方](effect.md#再付与時の処理は効果の変化に合わせる) も参照する。

### 実例：双律の印章の寿命の選択

[1412 双律の印章](../../Asset/data/asset/functions/artifact/1412.seal_of_dual_rhythm) は、軽減中・移譲後の待機中・再付与可能の状態を、効果と待機用Effectの有無で表す。

| 状態・効果 | 付与先 | 終了・継続の選択 |
| --- | --- | --- |
| 399：被ダメージ10%軽減 | 装備者 | 接触移譲・装備解除・本人の死亡で終了。死亡時は本体のremove処理で補正を解除する |
| 400：与ダメージ20%増加 | 接触した相手1人 | 15秒で失効、再付与で時間更新、重複なし。付与先の死亡で解除し、付与元の死亡には連動しない |
| 401：軽減の再付与待ち | 移譲元 | 60秒。本体の処理中は装備解除・死亡・リスポーン待ちでも残り時間が減る。表示あり、悪い効果、解除レベル3 |

接触は足元から高さ2、水平方向は本人を中心とする1×2×1のboxと相手の当たり判定との重なりで判定し、同時接触では最も近い1人へ付与する。ユーザー指定により、小さな箱を作る二段判定より読みやすさを優先する。399は `ProcessOnDied:"remove"` とし、リスポーン待ちの接触tickも本体の標準処理に従って停止する。これらはこの神器の仕様であり、別の神器では上記の寿命・責務から選び直す。自己終了の実装には [本体の版による相違](effect.md#自己終了は本体の契約に合わせる) があるため、関数全体を無条件に雛形にしない。

演出は状態の切り替わりで再生する。399のgiven/re-givenは水色の光と低めの音、400のgiven/re-givenは金色の光と高めの音で付与・更新を知らせる。移譲元の演出は399のtransferに置き、受取側の演出は400自身のイベントで再生する。継続tickや共通の解除処理には演出を置かず、常時の連続再生や装備解除・死亡時の移譲演出を避ける。SE・粒子の宛先は `@a` とし、selectorによる距離制限は付けない。

試験条件は [シナリオ](../../tests/scenarios/dual-rhythm.json)、確認済みの範囲と対象コードの版は [検証記録](../verification/dual-rhythm.md) を参照する。
