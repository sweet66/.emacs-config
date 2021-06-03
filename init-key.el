;; Mac平台下交换 Option 和 Command 键。
(when (featurep 'cocoa)
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))

 
;;; ### Unset key ###
;;; --- 卸载按键
(lazy-load-unset-keys                   ;全局按键的卸载
 '("C-z" "s-x"))


;;; ### Sdcv ###
;;; --- 星际译王命令行
(lazy-load-global-keys
 '(("p" . sdcv-search-pointer)          ;光标处的单词, buffer显示
   ("y" . sdcv-search-pointer+)         ;光标处的单词, tooltip显示
   ("i" . sdcv-search-input)            ;输入的单词, buffer显示
   (";" . sdcv-search-input+))
 "init-sdcv"
 "C-z")

;;; ### Aweshell ###
;;; --- 多标签式的shell
(lazy-load-global-keys
 '(
   ("s-n" . aweshell-new)
   ("s-h" . aweshell-toggle)
   ("s-x s-x" . aweshell-dedicated-toggle)
   )
 "aweshell")


;;; ### Awesome-Pair ###
;;; --- 结构化编程
(lazy-load-unset-keys
 '("M-J" "M-r" "M-s" "M-;" "C-M-f" "C-M-b" "M-)")
 awesome-pair-mode-map)                 ;卸载按键
(defvar awesome-pair-key-alist nil)
(setq awesome-pair-key-alist
      '(
        ;; 移动
        ("M-n" . awesome-pair-jump-left)
        ("M-p" . awesome-pair-jump-right)
        ;; 符号插入
        ("%" . awesome-pair-match-paren)       ;括号跳转
        ("(" . awesome-pair-open-round)        ;智能 (
        ("[" . awesome-pair-open-bracket)      ;智能 [
        ("{" . awesome-pair-open-curly)        ;智能 {
        (")" . awesome-pair-close-round)       ;智能 )
        ("]" . awesome-pair-close-bracket)     ;智能 ]
        ("}" . awesome-pair-close-curly)       ;智能 }
        ("\"" . awesome-pair-double-quote)     ;智能 "
        ("=" . awesome-pair-equal)             ;智能 =
        ("SPC" . awesome-pair-space)           ;智能 Space
        ;; 删除
        ("M-o" . awesome-pair-backward-delete) ;向后删除
        ("C-d" . awesome-pair-forward-delete)  ;向前删除
        ("C-k" . awesome-pair-kill)            ;向前kill
        ;; 包围
        ("M-\"" . awesome-pair-wrap-double-quote) ;用 " " 包围对象, 或跳出字符串
        ("M-[" . awesome-pair-wrap-bracket)       ;用 [ ] 包围对象
        ("M-{" . awesome-pair-wrap-curly)         ;用 { } 包围对象
        ("M-(" . awesome-pair-wrap-round)         ;用 ( ) 包围对象
        ("M-)" . awesome-pair-unwrap)             ;去掉包围对象
        ;; 跳出并换行缩进
        ("M-:" . awesome-pair-jump-out-pair-and-newline) ;跳出括号并换行
        ))
(lazy-load-set-keys awesome-pair-key-alist awesome-pair-mode-map)

(provide 'init-key)
