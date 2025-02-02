;; 初始化包管理器
;; (require 'init-package)

;; 设置字体
(require 'init-font)

;; 常规设置
(require 'init-generic)

;; 在mac下加载环境变量，防止插件找不到外部命令程序
(when (featurep 'cocoa)
  (require 'cache-path-from-shell))

;;
(require 'lazy-load)

;; lsp 补全
(require 'init-lsp-bridge)

;;
(require 'one-key)

;; 行号设置
(require 'init-line-number)

;; 增强的高亮括号
(require 'highlight-parentheses)

;; tab标签打开buffer
(require 'init-awesome-tab)

;; 自动保存
(require 'init-auto-save)

;; 括号自动补全
(require 'init-awesome-pair)

;; 翻译
(require 'init-sdcv)

;; 绑定扩展名到特定的模式
(require 'init-mode)

;; 自动补全
;; (require 'init-company-mode)

;; 添加editorconfig
(require 'init-editorconfig)

;; 添加prettier
(require 'init-prettier)

;; 添加flycheck
;; (require 'init-flycheck)

;; ts, js代码智能补全
;; (require 'init-tide)

;; 按键绑定
(require 'init-key)

(run-with-timer
  1 nil
  #'(lambda ()
         (require 'init-yasnippet)
         (require 'init-markdown-mode)
         (require 'init-proxy)

         ;; Restore session at last.
         (require 'init-session)
         (emacs-session-restore)
      ))

(setq url-proxy-services
   '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
     ("http" . "localhost:8118")
      ("https" . "localhost:8118")))

(provide 'init)
