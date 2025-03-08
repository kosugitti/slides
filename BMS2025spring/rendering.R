library(quarto)

# スクリプトのディレクトリを取得して、そこに移動
# インタラクティブに実行されているかをチェック
if (interactive()) {
    # インタラクティブな場合には、現在のスクリプトのパスを取得（rstudioapiが利用可能な場合）
    if (requireNamespace("rstudioapi", quietly = TRUE) && rstudioapi::isAvailable()) {
        script_path <- rstudioapi::getSourceEditorContext()$path
        if (!is.null(script_path) && script_path != "") {
            script_dir <- dirname(normalizePath(script_path))
            cat("スクリプトディレクトリ (RStudio):", script_dir, "\n")
            setwd(script_dir)
        } else {
            cat("RStudioエディタでスクリプトを実行してください、またはソースファイルを保存してください。\n")
        }
    } else {
        cat("インタラクティブセッションで実行中です。現在のディレクトリを使用します。\n")
    }
} else {
    # Rscriptから実行された場合
    args <- commandArgs(trailingOnly = FALSE)
    file_arg <- args[grep("--file=", args)]

    if (length(file_arg) > 0) {
        script_path <- gsub("--file=", "", file_arg[1])
        script_dir <- dirname(normalizePath(script_path))
        cat("スクリプトディレクトリ (Rscript):", script_dir, "\n")
        setwd(script_dir)
    } else {
        cat("スクリプトパスを特定できません。現在のディレクトリを使用します。\n")
    }
}

# 現在の作業ディレクトリを表示（確認用）
cat("現在の作業ディレクトリ:", getwd(), "\n")

# レンダリングの進捗メッセージ
cat("ブックのレンダリングを開始します...\n")

# 全ての形式でレンダリング
# 方法1: quartoパッケージを使用
# 方法1: quartoパッケージを使用 (各形式を個別にレンダリング)
cat("HTML形式のレンダリングを開始...\n")
quarto_render(output_format = "html")

cat("PDF形式のレンダリングを開始...\n")
quarto_render(output_format = "pdf")

cat("EPUB形式のレンダリングを開始...\n")
quarto_render(output_format = "epub")

# 方法2: システムコマンドを直接使用
system2("quarto", c("render", "--to", "html", "--to", "pdf", "--to", "epub"))

# 特定の形式のみをレンダリングしたい場合はコメントを外して使用
# HTML形式のみ
# quarto_render(output_format = "html")
# PDF形式のみ
# quarto_render(output_format = "pdf")
# EPUB形式のみ
# quarto_render(output_format = "epub")

# 成功メッセージ
cat("レンダリングが完了しました。出力ファイルは 'docs' ディレクトリに保存されています。\n")
