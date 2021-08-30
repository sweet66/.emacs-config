# .emacs-config

## 安装sdcv插件依赖的星际译王软件
```sh
brew install stardict sdcv
```

## 在`~/.emacs`配置文件中加载所以配置
```lisp
(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to 'load-path'."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
   (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path "/home/user/.emacs-config")

(require 'init)
```

