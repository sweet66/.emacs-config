;; 设置字体
(require 'init-font)

;; 常规设置
(require 'init-generic)
;; (require 'lazycat-theme)
;; (lazycat-theme-load-dark)
(require 'lazy-load)

;; 行号设置
(require 'init-line-number)

;; 增强的高亮括号
(require 'highlight-parentheses)

;; tab标签打开buffer
(require 'init-awesome-tab)

;; 括号自动补全
(require 'init-awesome-pair)

;; 按键绑定
(require 'init-key)

;; 翻译
(require 'init-sdcv)

;; Restore session at last.
(require 'init-session)



(provide 'init)
