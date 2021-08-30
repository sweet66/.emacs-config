;; 初始化包管理器
(require 'init-package)

;; 设置字体
(require 'init-font)

;; 常规设置
(require 'init-generic)

;; 在mac下加载环境变量，防止插件找不到外部命令程序
(when (featurep 'cocoa)
  (require 'cache-path-from-shell))

;; 
(require 'lazy-load)

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

;; 按键绑定
(require 'init-key)

;; 翻译
(require 'init-sdcv)

;; Restore session at last.
(require 'init-session)

;; 绑定扩展名到特定的模式
(require 'init-mode)

;; 自动补全
(require 'init-company-mode)

;; 添加editorconfig
(require 'init-editorconfig)

;; 添加prettier
(require 'init-prettier)

;; 添加flycheck
(require 'init-flycheck)

;; ts,js代码智能补全
(require 'init-tide)



(provide 'init)
