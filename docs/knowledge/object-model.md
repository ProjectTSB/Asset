# Asset の型・インスタンス・継承モデル

確認日: 2026-09-15。Asset HEAD `8f661ea1003a0e519d9825c55e1dde0ce6edaf80` と、本体 HEAD `f88cdd5bcb2216d24b26e48684f4a7951a686c94` のコードを根拠とする。

Mob／Object の個別 mcfunction は、型定義・継承・メソッド・インスタンスフィールドを持つ実行モデルの中で動く。変更対象のディレクトリだけでなく、継承元、ID alias、本体の呼び出し処理までを一つの契約として読む。

## カテゴリごとの違い

| 対象 | 定義・継承 | インスタンスと呼び出し |
| --- | --- | --- |
| Mob／Object | ID 別の `register`、親 ID 配列 `Extends`、フィールドの既定値、メソッドの override | エンティティごとの Field。数値 ID の alias で lifecycle／任意メソッドを呼び出す |
| Effect | ID 別の定義、単一親チェーン、Field、固定イベント | 個体の `Effects[]` の各要素。function tag と ID 条件付き関数でイベントを呼び出す |
| Artifact | アイテム定義・トリガー・共通 API・rarity pool 等の登録 | 今回確認した範囲では Mob／Object と同じ `extends`／`super.*`／`call.m` の実行系ではない |

同じ `register`、`alias`、`tick` という名前でも、カテゴリをまたいで意味を一律に解釈しない。

## Mob／Object のクラス定義とフィールド

`<ID.name>/register.mcfunction` は実行時に型情報と既定フィールドを組み立てる定義である。召喚時に ID から `alias/<数値ID>/register` を呼び、共有の `storage asset:mob`／`asset:object` に定義を構築する。全クラスを load 時に常駐登録する仕組みとは区別する。例えば Mob の load 時の pool 登録と、召喚時のクラス定義の評価は別の処理である。`register` という名前だけで生成物と判断せず、対象の生成・移行スクリプトと履歴から編集方法を確認する。

継承する定義は、子固有の値を設定する前に `Extends` へ親 ID を追加して `asset:mob/extends` または `asset:object/extends` を呼ぶ。親の register が再帰的に実行され、その後の子の設定が親の値を上書きする。直接の親 ID 列は本体の ROM に保存され、後のメソッド探索にも使われる。

| データ | 役割 |
| --- | --- |
| register の `Type`、`Health` 等 | 型の構築データ。具体的な項目はカテゴリと基底型に依存する |
| register の `Field` | インスタンスフィールドの既定値 |
| API の `FieldOverride` | 生成する個体について、既定 `Field` に merge する値 |
| `asset:context this` | メソッドが読み書きする、そのインスタンスの Field の作業領域 |
| OhMyDat の `MobField`／`ObjectField` | エンティティごとに保持するインスタンスフィールドの保存先 |

フィールドの値を追うときは、親の既定値 → 子の上書き → 生成時の `FieldOverride` → init／イベント内の `this` の変更、の順に確認する。基底の init が要求するフィールドを子から供給する場合は、`super.init` より前の設定が必要になる。

`ExtendsSafe` は継承を許可する契約、`IsAbstract` は直接生成を避ける基底型であることを表す。複数親では二番目以降を abstract とする診断もある。ただし現行実装の違反検査は `tellraw` のみで処理が継続する箇所がある。型システムによる強制停止や「abstract は技術的に召喚不能」といった保証として扱わない。

Wiki は Object の `register` を load 時に一度作る class registry のように説明するが、現行本体は summon 時に `alias/<ID>/register` を実行して scratch storage に定義を構築する。[Wiki の Object 作成方針](https://github.com/ProjectTSB/TheSkyBlessing/wiki/create-object) は継承用の親を `IsAbstract:true` と `ExtendsSafe:true` にするよう求める。一方、現行 Mob／Object の診断は全親の `ExtendsSafe` と二番目以降の直接親の `IsAbstract` を検査し、最初の親の `IsAbstract` は検査しない。この作成方針と診断範囲の違いを区別し、実行を強制停止しないことだけを理由に方針を取り消さない。

## メソッドの継承・override・super

数値 ID の `alias/<ID>/<method>` が、ID を使う本体のマクロ呼び出しと、人間が読む名前付き実装パスを接続する。MobID／ObjectID は個体の型、context の `id` は現在探索・実行している型、`originID` は元の型を表す。親の実装に入るときも、別の親エンティティを作るわけではない。

- 子にメソッドの実装があれば、通常の呼び出しではその実装が選ばれ、親へ自動では降りない。空の実装を追加するだけでも親への fallback を止め得る。
- 子に実装がなければ、ROM に記録された親を辿る。個別ディレクトリに init／tick がなくても、継承したメソッドで動作し得る。
- override が親の処理も必要とする場合は、`super.init`／`super.tick` 等を明示的に呼ぶ。呼ぶ位置と条件は子の意味を決める。
- 任意メソッドも `call.m` とメソッド名を通じて探索される。これは既に `@s`、`originID`、`this` が確立された同一個体の lifecycle／method 内で使う内部 dispatch である。`call.m` 自体は個体の選択、OhMyDat の pointer 取得、`this` の読み出し・保存を行わない。`execute as` で別個体を選ぶだけでは、その個体への安全なメソッド呼び出しにはならない。[本体 Object call](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset/functions/object/call.m.mcfunction) の可視性と呼出前提を守る。

複数親では、定義の合成とメソッドの呼び出しを分けて考える。定義は後の親が前の親を上書きし、最後に子が上書きする。メソッド探索は各親の枝で実装を探した後も兄弟の親へ進むため、複数の実装が呼ばれる場合がある。Mob および Object の init／tick／summon は親配列の先頭から、Object の任意メソッドは末尾から探索する。変更する呼び出し経路の順序を確認する。

本体は `Implement` 等で実装の存在を検出する。関数を実行した成功・失敗の戻り値と、メソッドが存在することは別である。子メソッドの失敗を「未実装なので親へ進む」と解釈しない。

## インスタンス状態と呼び出し境界

Mob／Object のイベント処理では、本体が個体の OhMyDat Field を `this` に読み込み、メソッドの処理後に書き戻す。生成時には init 後の Field が最初に保存される。`this` は共有 storage 上の作業領域だが、その内容は持続する個体の状態である。「一時変数だから末尾で全削除する」という後始末は適用しない。

呼び出し時の `as`／`at`、Field の読み出し・保存、破棄済み個体への保存を避ける処理は本体が担う。メソッド中で API を使って別個体を生成する場合などには、ID／`this`／任意メソッド名を用途別のスタックで退避・復元する経路がある。共有 context や OhMyDat の参照先を独自に切り替えると、この境界を破り得る。

スタックがあることを全面的な再入安全性の保証にしない。不正 ID の召喚で退避後に早期終了し、復元へ到達しない経路も確認されている。正常・失敗の両経路を確認し、独自の直接呼び出しで既存の境界を迂回しない。

## 実例: Lunatic Mage と abstract_angel

1. [基底 `2000.abstract_angel` の register](../../Asset/data/asset/functions/mob/2000.abstract_angel/register.mcfunction) が継承・抽象フラグと `Field.BossbarName`、`Field.InflictDebuffCooldown` 等を定義する。
2. [子 `0237.lunatic_mage` の register](../../Asset/data/asset/functions/mob/0237.lunatic_mage/register.mcfunction) が親を取り込み、concrete 型の ID、能力値、攻撃用 Field 等を設定する。
3. [子の init](../../Asset/data/asset/functions/mob/0237.lunatic_mage/init/.mcfunction) が先に `super.init` を呼ぶ。
4. [親の init](../../Asset/data/asset/functions/mob/2000.abstract_angel/init/.mcfunction) が同じ個体の `this.BossbarName` を使って bossbar を準備し、その後に子の初期化が続く。

親の Field → 子への継承 → 個体の `this` → 親のメソッド、というつながりを読む。子だけをコピーしても、この契約は再現できない。

## 実例: potion と abstract_projectile

1. [子 `2070.potion` の register](../../Asset/data/asset/functions/object/2070.potion/register.mcfunction) は [基底 `0001.abstract_projectile`](../../Asset/data/asset/functions/object/0001.abstract_projectile/register.mcfunction) を継承する。
2. [子の init](../../Asset/data/asset/functions/object/2070.potion/init/.mcfunction) が `this.Speed=2`、`Range=160`、`MovePerStep=0.4` を設定してから `super.init` を呼ぶ。
3. [基底の init](../../Asset/data/asset/functions/object/0001.abstract_projectile/init/.mcfunction) は必須値を確認し、未指定時だけ MovePerStep の既定値を補い、RemainingRange を初期化する。子の 0.4 は維持される。
4. [子の tick](../../Asset/data/asset/functions/object/2070.potion/tick/.mcfunction) が状態に応じて固有処理と `super.tick` を使い分ける。[基底の tick](../../Asset/data/asset/functions/object/0001.abstract_projectile/tick/.mcfunction) は共通の飛翔処理を担う。

ここでは「子の値を準備してから親を呼ぶ」順序に意味がある。Lunatic Mage のように親の初期化を先に行う例と機械的に統一しない。

## Effect の別モデル

Effect のインスタンスは、エンティティ本体ではなく個体の OhMyDat `Effects[]` の各要素である。各要素が ID、Duration、Stack、Field 等を持つ。イベント時にその要素の Field が `this` に展開され、処理後に要素へ戻される。

Mob／Object の数値 alias と親配列探索ではなく、function tag の ID 条件付き wrapper と、ROM に記録した単一親チェーンで register／固定イベントを解決する。イベントは given、re-given、tick、remove、end。Mob／Object の任意メソッドや同じスタック構成を前提にしない。

例として [0079.poison の register](../../Asset/data/asset/functions/effect/0079.poison/register.mcfunction) は [0029.poison の register](../../Asset/data/asset/functions/effect/0029.poison/register.mcfunction) を継承し、ID と解除条件を上書きする。子に tick 実装がなく、[親の tick](../../Asset/data/asset/functions/effect/0029.poison/tick/.mcfunction) が継承した個体 Field の `this.Tick` を更新する。

再付与時の `PreviousField` は旧 Field の snapshot であり、永続フィールドそのものではない。前回 stack と今回 stack の境界を検出する既存セット Effect は、given/re-given の末尾で現在値を `this.PrevStack` に保存する。解除レベルは Wiki が Lv4 を「運用上未使用」とする一方、現行 `0244.aurora_armor` と `0246.flame_devil_armor` は `RequireClearLv 4` を使うため、その記述は現状には採用しない。

## 変更前に確認すること

1. 対象カテゴリと型 ID、直接親と祖先の register を特定する。pool への参加登録とクラス定義を分ける。
2. 対象メソッドが自前実装・継承・明示 super のどれで動くか、alias／wrapper と本体の呼び出し先を辿る。
3. 使用する Field の既定値、生成時 override、初期化順、イベント中の変更と保存責務を確認する。
4. 親の契約を変える場合は派生型を検索する。子へ実装を追加する場合は、失われる自動 fallback がないか確認する。
5. ネストした生成・メソッド呼び出しや失敗経路で、外側の個体・ID・Field を壊さないか確認する。

本体の根拠を辿る入口: [Object 生成と FieldOverride](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/api/functions/object/core/summon.mcfunction)、[Object の Field 読込・保存](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/object/triggers/tick.mcfunction)、[任意メソッドの親探索](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/object/call_method/call_super_methods/.mcfunction)、[Effect のインスタンス更新](https://github.com/ProjectTSB/TheSkyBlessing/blob/f88cdd5bcb2216d24b26e48684f4a7951a686c94/TheSkyBlessing/data/asset_manager/functions/effect/foreach.mcfunction)。リンク先は確認時点の実装であり、変更時には対象ブランチの現行コードを確認する。
